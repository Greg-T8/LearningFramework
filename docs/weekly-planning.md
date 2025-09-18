# Weekly Planning

This document describes how to plan learning sessions on Saturdays so that each week has a clear roadmap.  
It connects the **what (Issues)**, **how (Labs)**, and **when (PRs)** across days.

---

## 1. Saturday Planning

- **Review Topic/Epic Issues**  
  - These are the “what” — the topics you want to advance (e.g., *Kubernetes — RBAC*, *AZ-104 — VNets*).  
  - Decide which topics will be in focus for the coming week.  

- **Scaffold Labs**  
  - For each topic you plan to study, decide if it’s reusable.  
  - If yes → run `New-Lab.ps1` to create a Markdown recipe under `/labs/` and a corresponding Lab Issue.  
  - If no (exploratory spike) → plan to capture it only in daily session PRs.  

- **Map Sessions to Days**  
  - Assign 2 × 1-hour sessions per day (Mon–Fri).  
    - Session A: Certification focus (e.g., AZ-104, AI-102).  
    - Session B: System/Programming focus (e.g., Kubernetes, Terraform, C#).  
  - Note which lab(s) or topic each session will target.  

---

## 2. Daily Execution

For each 1-hour block:

1. Run `New-Session.ps1` to scaffold a PR and a `/sessions/YYYY-MM-DD-topic/` directory.  
2. Work through the assigned lab(s).  
3. Capture notes, drills, and evidence directly in the PR template.  
4. At the end of the hour:  
   - Mark outcome level (L1–L4).  
   - Tick Labs/Drills/Evidence.  
   - Add Next Steps.  
   - Merge the PR.  

---

## 3. Linking Artifacts

- **Topic/Epic Issue**  
  - Lists the labs associated with the topic.  
  - Tracks which labs have reached which outcome level.  

- **Lab File (`/labs/*.md`)**  
  - Durable recipe with steps and expected outcomes.  
  - Linked from its Lab Issue and referenced in session PRs.  

- **Session PR**  
  - The daily journal.  
  - Links back to the relevant Lab Issue(s).  
  - Stores evidence in `/sessions/YYYY-MM-DD-topic-slug/`.  

---

## 4. Example Week Plan

**Topic Issues in play:**  
- `#41 Kubernetes — RBAC`  
- `#42 AZ-104 — VNets`

**Labs scaffolded:**  
- `labs/kubernetes/rbac-basics.md` (Lab Issue #101)  
- `labs/azure/vnet-peering.md` (Lab Issue #102)

**Planned sessions:**  

| Day        | Session A (Cert)                        | Session B (System/Language)      |
|------------|------------------------------------------|----------------------------------|
| Monday     | AZ-104 — VNet Peering (Lab #102)         | Kubernetes RBAC (Lab #101)       |
| Tuesday    | AZ-104 — VNet Peering (continue)         | Kubernetes RBAC (continue)       |
| Wednesday  | AZ-104 — NSGs (new Lab)                  | Kubernetes — Ingress NGINX (new) |
| Thursday   | AZ-104 — Recovery Services Vault (new)   | Kubernetes RBAC (push to L3/L4)  |
| Friday     | AZ-104 — Review & Drills                 | Kubernetes — Storage Classes     |

---

## 5. Guiding Principles

- Always **close PRs daily** (even if only L1 or L2).  
- Labs may span multiple sessions before reaching L4.  
- Topic Issues serve as the high-level progress tracker.  
- Weekly planning reduces decision fatigue and ensures steady progress.

---
