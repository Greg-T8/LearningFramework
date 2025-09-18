# Rapid Upskilling Playbook

This playbook is for situations where I need to **quickly get up to speed on a
topic I’ve never learned before** (e.g., a new Azure service, Kubernetes
feature, or client technology).  
It applies the same framework of **Issues (what), Labs (how), PRs (when)** but
emphasizes speed and evidence.

---

## 1. Frame the Topic (Day 0 / Kickoff)

- [ ] Create a **Topic/Epic Issue**  
  - Title: `Topic: <New Area>` (e.g., *Topic: Azure Application Gateway WAF
    v2*).  
  - Add a short scope: 2–4 sub-areas to cover.  

- [ ] Scaffold **2–3 candidate labs**  
  - Use `New-Lab.ps1` to create Markdown files in `/labs/` and Lab Issues.  
  - Keep initial recipes minimal (Goal + Expected Outcome). Flesh them out as
    you learn.  

- **Outcome:** Lab(s) and topic are at **L1 · Framed**.  

---

## 2. Run Daily 1-Hour Sessions

- Each morning block → start with `New-Session.ps1`.  
- Execute one lab or sub-area at a time.  
- Capture in the PR template:  
  - **Labs:** steps attempted  
  - **Drills:** recall tasks (even basic ones)  
  - **Evidence:** CLI output, screenshots, code in `/sessions/YYYY-MM-DD-topic/`
- **Always merge** the PR after 1 hour, even if only partial.  

---

## 3. Advance Through Outcome Levels

Use the L1–L4 ladder to show progress clearly:

- **L1 · Framed:** Topic/lab scoped, notes ready.  
- **L2 · Built & Planned:** Infra/code spun up, basic config in place.  
- **L3 · Verified Core:** Main workflow tested successfully.  
- **L4 · Complete:** Edge cases validated, lab documented, can explain/teach it.

---

## 4. Communicate Progress

When updating colleagues or managers, describe status by outcome level:  

- “I’m at **L2**: environment built, ready to validate core scenario.”  
- “I’ve reached **L3**: happy path verified.”  
- “I’m pushing to **L4**: edge cases tested, documentation complete.”  

This gives a clear and transparent picture of *where I am on the learning
curve*.  

---

## 5. Wrap Up & Retain

- Close the Topic/Epic Issue when the required depth is achieved.  
- Keep `/labs/*.md` recipes updated with steps + outcomes so they’re reusable.  
- Ensure session PRs (journals) link back to their Lab Issue(s).  
- Optional: Write a short summary comment in the Topic Issue with lessons
  learned and links to final labs.  

---

## Example Flow: Azure WAF v2

1. **Frame:**  
   - Topic Issue: *App Gateway WAF v2*  
   - Labs scaffolded: *Basic Deployment*, *Custom Rules*, *Diagnostics*  

2. **Sessions:**  
   - Mon (1h): Deployment → PR closes at L2  
   - Tue (1h): Custom rules tested → PR closes at L3  
   - Wed (1h): Diagnostics validated → PR closes at L4  

3. **Outcome:**  
   - Topic Issue linked to 3 completed labs  
   - Durable recipes under `/labs/azure/`  
   - Evidence folders under `/sessions/2025-09-22-*/`  
   - Can now explain and reproduce WAF v2 confidently.  

---

## Key Principles

- **Speed, not perfection.** Close daily, even if at L1/L2.  
- **Evidence beats memory.** CLI outputs, screenshots, and notes live in PRs and
  labs.  
- **Reusability.** Labs designed here become part of the long-term library.  
- **Transparency.** L1–L4 communicates exactly where I am on the path to
  competence.  

---
