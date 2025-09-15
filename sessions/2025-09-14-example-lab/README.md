# 2025-09-14 – Deploy-Check skeleton

## Plan

- Outcome: L2 – scripts build; verify plan written; blocked on assignment
- Labs to run: [x] example-rbac-custom-role

## Build (notes)

- Edited AssignableScopes to sub; ran deploy script

## Check

- Plan: call verify.ps1 as MI and list blob metadata (placeholder today)

## Cleanup

- cleanup.ps1 removes role (manual assignment deletion TBD)

## What broke / How I fixed it

- Error: az role definition create succeeded; assignment cmd not authored yet abc
- Fix (tomorrow): add assignment step + choose correct DataActions

## Current State

- Blocked: role assignment missing; verification not meaningful yet
- Command & error: N/A (no assignment step yet)
- Hypothesis: Need correct principal and DataActions
- Evidence: Role exists in subscription
- Next test I’ll try: implement assignment; retry verify
- Minimal repro: 1) create role 2) assign MI 3) read metadata

## Next

- Add assignment command; update verify to real read; re-run
