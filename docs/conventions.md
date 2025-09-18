# Conventions

These conventions define how I structure and run daily learning sessions, how I
use Issues, Labs, and PRs, and how I apply the L1–L4 outcome ladder.

---

## 1. What / How / When

- **Issues = What**  
  - Topics I want to cover (e.g., “Kubernetes — RBAC”).  
  - Can be **Topic/Epic Issues** (multi-week plan) or **Lab Issues** (specific
    exercises).  
  - Long-lived, track planning andoverall progress.

- **Markdown Labs = How**  
  - Durable recipes under `/labs/` with goal, steps, expected outcome, and
    variations.  
  - Each Lab Issue links to its corresponding lab file.  
  - Reused across multiple sessions until mastery (L4).

- **Pull Requests = When**  
  - Each 1-hour session is a PR journal.  
  - Branch + PR title encode date + topic + outcome (L1–L4).  
  - Closed daily, even if incomplete.

---

## 2. Outcome Levels

Every lab and every session journal is tagged with an outcome level:

- **L1 · Framed** — Scoped, notes or lab design started.  
- **L2 · Built & Planned** — Environment/code built, not fully validated.  
- **L3 · Verified Core** — Happy path tested and working.  
- **L4 · Complete** — Edge cases validated, documented, ready to teach.

> **Rule:** Always merge the PR at the level reached that day.

---

## 3. Branch & PR Naming

- **Branch format:**  

Example: `session/2025-09-22-kubernetes-rbac-L2`

- **PR title format:**  

Example: `Session 2025-09-22 — Kubernetes RBAC (L2 Built & Planned)`

---

## 4. Labels

Use GitHub labels for clarity and filtering:

- `Session` — applied to all session PRs  
- `L1 · Framed`  
- `L2 · Built & Planned`  
- `L3 · Verified Core`  
- `L4 · Complete`  
- `Lab` — applied to Lab Issues  
- `Topic` or `Planning` — applied to Topic/Epic Issues  
- `needs closure` — (auto-applied) PR open >2h

---

## 5. Daily Closure Ritual

At the end of each 1-hour session:

1. Commit & push code, notes, evidence.  
2. Update PR template:

    - Tick **Labs / Drills / Evidence**.  
    - Record **What Broke / How I Fixed It**.  
    - Add **Next Steps**.  

3. Update outcome level (L1–L4) in PR title.  
4. Merge the PR.

> **Non-negotiable:** All session PRs close the same day they start.

---

## 6. Weekly Planning (Saturday)

- Review Topic/Epic Issues → decide what to advance.  
- Use `New-Lab.ps1` to scaffold reusable labs under `/labs/`.  
- Map labs to the week’s 1-hour sessions.  
- Update Topic Issues with links to new labs.

---

## 7. Rapid Upskilling

When asked at work to jump into a brand-new area:

- Frame with a Topic/Epic Issue.  
- Scaffold 2–3 labs quickly.  
- Use daily PRs to advance labs from L1 → L3 fast.  
- Push to L4 if mastery is required.  
- Communicate progress using outcome levels (e.g., “I’m at L2, validating core today”).

---

## 8. Evidence Location

Each session creates a directory under `/sessions/`:
