# LearningTest

This repo shows how to run a 2‑hour **Build → Drill → Ship** session with the **Fail‑Forward** procedure. Use it as a template for other learning repos.


## Daily flow (2h)
- **Block A (80m)** — Primary lab (e.g., cert objective)
- **Block B (35m)** — Sprinkle (language/systems)
- **Ship (5m) + Drill (10m)** — Commit + PR; closed‑book Q&A


## Fail‑Forward checkpoints
- **T+50m**: If check doesn’t pass → **de‑scope** (Ladder)
- **T+70m**: If still blocked → stop building; ship WIP + drill


### De‑scope Ladder
- **L4 — Complete**: deploy ✓ check ✓ cleanup ✓
- **L3 — Verified core**: main path works; cleanup later
- **L2 — Built & planned**: scripts lint/compile; dry‑run/plan captured; **verify plan written**
- **L1 — Framed**: scenario + acceptance criteria; command list; repo scaffolded


### Session scaffold
```powershell
pwsh scripts/New-Session.ps1 -Topic "<short-topic>" -Outcome "<tiny outcome>"