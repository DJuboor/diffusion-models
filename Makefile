.PHONY: setup run quality test lint format clean lab check-brew check-uv kernel help

KERNEL_NAME := diffusion-models

# === Main Entry Point ===
run: setup lab  ## Full setup + launch JupyterLab

# === Setup ===
setup: check-uv check-brew sync kernel  ## Install everything (brew deps, Python deps, Jupyter kernel)

check-uv:
	@command -v uv >/dev/null 2>&1 || { echo "uv not found. Install: curl -LsSf https://astral.sh/uv/install.sh | sh"; exit 1; }

check-brew:
	@command -v brew >/dev/null 2>&1 || { echo "Homebrew not found. Install: https://brew.sh"; exit 1; }
	@echo "Checking brew dependencies..."
	@brew list ffmpeg >/dev/null 2>&1 || { echo "Installing ffmpeg (video processing)..."; brew install ffmpeg; }

sync:
	uv sync

kernel: sync  ## Register Jupyter kernel for this venv
	uv run python -m ipykernel install --user --name $(KERNEL_NAME) --display-name "Diffusion Models"
	@echo "Kernel '$(KERNEL_NAME)' registered."

# === Quality Gates ===
quality: lint test  ## Run all checks (MUST pass before commits)

test:  ## Run tests
	uv run pytest

lint:  ## Lint code
	uv run ruff check .
	uv run ruff format --check .

format:  ## Auto-format code
	uv run ruff check --fix .
	uv run ruff format .

# === Development ===
lab:  ## Launch JupyterLab
	uv run jupyter lab --notebook-dir=notebooks

# === Cleanup ===
clean:  ## Remove generated files and kernel
	rm -rf __pycache__ .pytest_cache .ruff_cache .coverage
	rm -rf data/ models/ outputs/
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -name "*.pyc" -delete 2>/dev/null || true
	-jupyter kernelspec remove $(KERNEL_NAME) -y 2>/dev/null || true

help:  ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
