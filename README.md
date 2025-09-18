# LearningSessions Framework

This repo provides the **templates, scripts, and workflows** I use to run daily 1-hour learning sessions (two per day).  
It standardizes how I plan, design labs, and journal my work across technology-specific repos.

---

## Core Idea: What / How / When

- **Issues = What**  
  Issues capture the **topics I want to learn**.  
  - Example: `Topic: Kubernetes — RBAC`  
  - Long-lived, span weeks or months.  
  - Can be planning issues (certification sub-domains) or lab issues (specific practice exercises).  

- **Markdown Labs = How**  
  Markdown files under `/labs/` describe **how to learn** a topic.  
  - Durable, reusable recipes.  
  - Structured with goal, steps, expected outcome, and variations.  
  - Linked to a Lab Issue so multiple sessions can reference them.  

- **Pull Requests = When**  
  Each daily 1-hour session is a **PR journal**.  
  - Branch name and PR title include the date + outcome level (L1–L4).  
  - PR body captures what I did in that hour: Labs, Drills, Evidence, Next Steps.  
  - Closed **every day**, even if only partially complete, so progress is visible and continuous.

---

## Outcome Levels (L1–L4)

- **L1 · Framed** — scoped the lab, wrote notes, set direction.  
- **L2 · Built & Planned** — created something, planned validation.  
- **L3 · Verified Core** — core workflow tested and working.  
- **L4 · Complete** — edges validated, documented, can teach it.  

Every PR closes at the level reached that day.

---

## Daily Flow

1. **Start session:**  
   Run `New-Session.ps1` → creates a branch, pre-populated PR, and `/sessions/YYYY-MM-DD-topic/`.  

2. **Work 1 hour:**  
   - Labs = hands-on steps  
   - Drills = closed-book recall  
   - Evidence = code, screenshots, logs  

3. **Close PR (always):**  
   - Tick checklist  
   - Mark outcome (L1–L4)  
   - Record Next Steps  

Repeat for the second session (different topic).

---

## Weekly Flow

- **Saturday planning:**  
  - Open/maintain Topic Issues for upcoming focus areas.  
  - Scaffold new labs with `New-Lab.ps1` for anything reusable.  
  - Map out which labs will be targeted each day.

- **During the week:**  
  - Sessions (PRs) link back to Issues (what) and Labs (how).  
  - Over time, labs advance from L1 → L4 through multiple sessions.

---

## Repo Contents

- **/docs** — conventions, weekly planning guide, rapid upskilling playbook  
- **/templates** — PR, Issue, and Lab templates  
- **/scripts** — PowerShell helpers (`New-Session.ps1`, `New-Lab.ps1`, `Setup-Labels.ps1`, `Start-SessionTimer.ps1`)  
- **/labs** — durable lab recipes (the “how”)  
- **/sessions** — evidence folders created per daily session (the “when”)  
- **.github/** — workflows for auto-labeling, title enforcement, closure reminders  

---

## Why This Works

- **Clarity:** Issues tell me *what* to cover, labs define *how* to do it, PRs capture *when* it happened.  
- **Iteration:** Progress is logged daily, even if incomplete.  
- **Reusability:** Labs grow into a personal library of recipes I can re-run or share.  
- **Accountability:** Closing PRs every day builds a visible history of learning.  

---
