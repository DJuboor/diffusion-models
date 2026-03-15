# Diffusion Models

Hands-on notebook suite for **video generation ML engineering** — data pipelines, diffusion foundations, and the research frontier: autoregressive modeling, step distillation, long context, and multi-modality.

Data essentials first, then architecture, then production and research. Every notebook is self-contained, code-heavy, and produces visual outputs.

---

## 🚀 Quick Start

```bash
make run      # Install everything + launch JupyterLab
```

**Prerequisites:** [Homebrew](https://brew.sh), [uv](https://docs.astral.sh/uv/)

---

## 📚 Learning Tracks

| Track | Time | Sequence |
|-------|------|----------|
| **Datasets** (data-focused) | ~7 days | 01 → 02 → 03 → 04 → 05 → 06 → 07 + skim 08, 10, 16 |
| **Fast Architecture** | ~20 hrs | 08 → 09 → 10 → 13 → 14 → 16 → 17 |
| **Essentials Only** | ~3 days | 01 → 02 → 03 → 06 → 07 |
| **Full** | ~40-50 hrs | All 22 notebooks in order |

---

## 📋 Progress

<details>
<summary>Tier 1: Data Essentials (do first)</summary>

- [ ] 01 — Video AI Landscape & Data Needs (~1-1.5 hrs)
- [ ] 02 — Video Data Pipeline (~3-4 hrs)
- [ ] 03 — Data Dedup & Quality (~2-3 hrs)
- [ ] 04 — Recaptioning & Data Mixing (~2-3 hrs)
- [ ] 05 — Training Data Infrastructure (~2-3 hrs)
- [ ] 06 — System Design & Applied ML (~2 hrs)
- [ ] 07 — PyTorch Coding Drills (~3-4 hrs)

</details>

<details>
<summary>Tier 2: Diffusion & Architecture Foundations</summary>

- [ ] 08 — Diffusion from Scratch (~3-4 hrs)
- [ ] 09 — Stable Diffusion Deep Dive (~2-3 hrs)
- [ ] 10 — DiT and Flow Matching (~3 hrs)
- [ ] 11 — Guidance and Control (~2 hrs)
- [ ] 12 — Stable Cascade (~2 hrs)
- [ ] 13 — Video Generation (~2-3 hrs)

</details>

<details>
<summary>Tier 3: Production Skills</summary>

- [ ] 14 — Inference Optimization (~2-3 hrs)
- [ ] 15 — Eval Metrics (~2 hrs)

</details>

<details>
<summary>Tier 4: Research Frontiers</summary>

- [ ] 16 — Autoregressive Video (~2-3 hrs)
- [ ] 17 — Real-time Distillation (~2-3 hrs)
- [ ] 18 — Long Context (~2-3 hrs)
- [ ] 19 — Multimodal Generation (~2 hrs)

</details>

<details>
<summary>Tier 5: Additional Topics</summary>

- [ ] 20 — Finetuning & Adapters (~2-3 hrs)
- [ ] 21 — Distributed Training Infra (~2-3 hrs)
- [ ] 22 — Video Gen Industry Landscape (~1-2 hrs)

</details>

---

## 📓 Notebooks

<details>
<summary>Tier 1: Data Essentials</summary>

| # | Notebook | Time | Description |
|---|----------|------|-------------|
| 01 | Video AI Landscape & Data Needs | ~1-1.5 hrs | Product evolution, per-product data requirements, data team role, self-assessment |
| 02 | Video Data Pipeline | ~3-4 hrs | Scene detect, filter, caption, embed, pack (Lance) |
| 03 | Data Dedup & Quality | ~2-3 hrs | Perceptual hashing, embedding dedup, hierarchical quality filtering |
| 04 | Recaptioning & Data Mixing | ~2-3 hrs | VLM re-captioning, structured captions, data mixing, training formats |
| 05 | Training Data Infrastructure | ~2-3 hrs | WebDataset + MosaicML Streaming side-by-side, distributed data loading |
| 06 | System Design & Applied ML | ~2 hrs | Backprop from scratch, 4 system designs (inference + 3 data pipelines), Q&A |
| 07 | PyTorch Coding Drills | ~3-4 hrs | Timed 35-min coding exercises: attention, DDPM, data pipelines |

</details>

<details>
<summary>Tier 2: Diffusion & Architecture Foundations</summary>

| # | Notebook | Time | Description |
|---|----------|------|-------------|
| 08 | Diffusion from Scratch | ~3-4 hrs | Build DDPM on MNIST, train, visualize denoising |
| 09 | Stable Diffusion Deep Dive | ~2-3 hrs | Break apart SD 1.5, touch every component |
| 10 | DiT and Flow Matching | ~3 hrs | DiT architecture + implement flow matching |
| 11 | Guidance and Control | ~2 hrs | CFG sweeps, ControlNet, conditioning |
| 12 | Stable Cascade | ~2 hrs | 3-stage cascaded latent diffusion (42x compression) |
| 13 | Video Generation | ~2-3 hrs | Temporal attention, generate video clips |

</details>

<details>
<summary>Tier 3–5: Production, Research, Additional</summary>

| # | Notebook | Time | Description |
|---|----------|------|-------------|
| 14 | Inference Optimization | ~2-3 hrs | Benchmark: compile, FA, schedulers, precision |
| 15 | Eval Metrics | ~2 hrs | FID, CLIP score, LPIPS, mini eval pipeline |
| 16 | Autoregressive Video | ~2-3 hrs | AR generation, causal attention, error accumulation |
| 17 | Real-time Distillation | ~2-3 hrs | CausVid, rCM, consistency models |
| 18 | Long Context | ~2-3 hrs | SSMs, Mamba, sparsity, STA |
| 19 | Multimodal Generation | ~2 hrs | Video + audio joint generation |
| 20 | Finetuning & Adapters | ~2-3 hrs | LoRA from scratch, DreamBooth, textual inversion, adapter composition |
| 21 | Distributed Training Infra | ~2-3 hrs | DDP, FSDP, Ray data processing, orchestration overview |
| 22 | Video Gen Industry Landscape | ~1-2 hrs | Product evolution, competitive landscape, discussion questions |

</details>

---

## 🛠️ Development

```bash
make run      # Full setup + launch JupyterLab
make setup    # Brew deps + Python deps + Jupyter kernel
make lab      # Launch JupyterLab (assumes setup done)
make quality  # Lint + test (must pass before commits)
make format   # Auto-fix formatting
make clean    # Remove generated files + kernel
```

---

## 🖥️ Hardware

- **Local:** MacBook Pro (Apple Silicon) — CPU/MPS for lighter notebooks
- **Remote:** Homelab with NVIDIA DGX Spark — full GPU workloads via SSH
- Per-notebook VRAM notes in each notebook header
- Cells marked "needs GPU" can run on the remote DGX or fall back to CPU locally

---

## 🧪 Exams

Timed, spec-driven coding exams in `notebooks/exams/` — all formulas provided, no memorization required.

| Series | EASY | MEDIUM | HARD | ELITE |
|--------|------|--------|------|-------|
| **Data** (pipelines, search, quality) | 8 × 15-20 min | 8 warmups + 8 × 30 min | 8 × 30 min | 6 × 30 min |
| **Modeling** (architectures, training) | 8 × 15-20 min | 8 × 30 min | 8 × 30 min | 6 × 30 min |

---

## 🏗️ Architecture

<details>
<summary>Project structure</summary>

```
diffusion-models/
├── Makefile
├── pyproject.toml
├── README.md
└── notebooks/
    ├── 01–22 learning notebooks
    ├── X.5 end-of-day review exams
    └── exams/
        ├── DATA_EXAM_{EASY,MEDIUM,HARD,ELITE}.ipynb
        └── MODELING_EXAM_{EASY,MEDIUM,HARD,ELITE}.ipynb
```

</details>

---

## 📄 Key Papers

<details>
<summary>Reference table</summary>

| Paper | arXiv | Notebook |
|-------|-------|----------|
| DDPM (Ho et al. 2020) | [2006.11239](https://arxiv.org/abs/2006.11239) | 08 |
| Latent Diffusion (Rombach et al. 2022) | [2112.10752](https://arxiv.org/abs/2112.10752) | 09 |
| Classifier-Free Guidance (Ho & Salimans 2022) | [2207.12598](https://arxiv.org/abs/2207.12598) | 11 |
| DiT (Peebles & Xie 2023) | [2212.09748](https://arxiv.org/abs/2212.09748) | 10 |
| Flow Matching (Lipman et al. 2023) | [2210.02747](https://arxiv.org/abs/2210.02747) | 10 |
| Stable Cascade (Pernias et al. 2024) | [2402.01355](https://arxiv.org/abs/2402.01355) | 12 |
| Stable Video Diffusion (Blattmann et al. 2023) | [2311.15127](https://arxiv.org/abs/2311.15127) | 13 |
| LoRA (Hu et al. 2022) | [2106.09685](https://arxiv.org/abs/2106.09685) | 20 |
| DreamBooth (Ruiz et al. 2023) | [2208.12242](https://arxiv.org/abs/2208.12242) | 20 |
| DMD (Yin et al. 2024) | [2311.18828](https://arxiv.org/abs/2311.18828) | 17 |
| CausVid (Yin et al. 2025) | [2412.07772](https://arxiv.org/abs/2412.07772) | 16, 17 |
| Sliding Tile Attention (Zhang et al. 2025) | [2502.04507](https://arxiv.org/abs/2502.04507) | 18 |
| Mamba (Gu & Dao 2024) | [2312.00752](https://arxiv.org/abs/2312.00752) | 18 |
| MMAudio (Luo et al. 2024) | [2412.15322](https://arxiv.org/abs/2412.15322) | 19 |
| Wan2.1 (Wang et al. 2025) | [2503.20314](https://arxiv.org/abs/2503.20314) | 13 |
| Open-Sora 2.0 (Zheng et al. 2025) | [2503.09642](https://arxiv.org/abs/2503.09642) | 17 |
| HunyuanVideo (Kong et al. 2024) | [2412.03603](https://arxiv.org/abs/2412.03603) | 17 |

</details>

---

## 🔗 Dependencies

Managed with [uv](https://docs.astral.sh/uv/). Core: PyTorch, diffusers, transformers, accelerate, LanceDB, OpenCV, torchmetrics, WebDataset, MosaicML Streaming.
