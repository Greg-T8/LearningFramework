# Learning Framework Workflow

This repository organizes study and lab work around **labs** and **sessions**.  
The goal: keep planning clean, execution lightweight, and history consistent.

---

## Core Principles

- **Labs are the organizing unit**
  - Each lab is planned in advance as a **Lab issue** (`type: lab`).
  - A lab corresponds to a larger exam objective, technology area, or project.
  - Labs are tracked in **one branch** and **one pull request**.

- **Sessions are the execution unit**
  - Each focused 1–2 hour block is tracked as a **Session issue** (`type: session`).
  - Sessions are linked to their parent lab issue.
  - Sessions create notes and commits inside the **lab branch** — no separate PR.

---

## Workflow

### 1. Plan a Lab

- Run `New-Lab.ps1` to create a lab issue.
- Example:

  .\New-Lab.ps1 -Title "Azure VMware Solution Networking Deep Dive"

- No branch is created yet. The lab is marked `status: planned`.

### 2. Start or Continue a Session

- Run `New-Session.ps1` with a session title.
- Example:

  .\New-Session.ps1 -SessionTitle "Review AVS NSX-T Segments"

- The script:
  - Creates a session issue linked to the lab.
  - Ensures the **lab branch** exists (creates it on the first session).
  - Adds a session markdown file under `/sessions`.
  - Commits and pushes to the lab branch.
  - Updates `.learning/active-lab.json` with current context.

### 3. Work in One Branch Only

- All commits for the lab — across multiple sessions — go to the **same branch**:
  
  lab/<lab-issue-number>-<slug>
  
- A single PR is created per lab.
- Sessions are **issues + commits**, not separate branches.

### 4. Closeout

- When the lab is complete:
  - Update the lab issue to `status: complete`.
  - Merge the lab PR.
  - Session issues linked to the lab can be auto-closed by including  
    `Closes #<session-issue>` in commit messages or PR body.

---

## Example Structure

```text
labs/
lab-128-avs-networking.md
sessions/
session-201-2025-09-20.md
session-202-2025-09-21.md
notes/
avs-overview.md
scripts/
New-Lab.ps1
New-Session.ps1
Setup-Labels.ps1
Start-SessionTimer.ps1
```

---

## Labels

- **Labs**
  - `type: lab`
  - `status: planned | in-progress | complete`
- **Sessions**
  - `type: session`
  - `status: planned | in-progress | complete`

---

## Summary

- **Labs = branches + PRs**  
- **Sessions = issues + commits**  
- **One branch per lab, never more than one PR per lab.**  

This approach keeps the workflow simple:  
Plan labs, execute sessions, and merge one PR per lab.
