# Lab: Example — Custom Role for Scoped Read

**Scenario:**

Create a custom RBAC role with narrow read permissions, assign it to a managed identity (MI), and verify access via a simple command. (Example only — fill real actions for your case.)

**Acceptance criteria**
- Custom role definition created at subscription scope
- Role assignment to MI succeeds
- Verify command returns expected metadata (or fails as expected for denied ops)

## Steps
1) Author `role.example.json` with AssignableScopes set to your subscription.
2) (Optional) Create or locate an MI to assign.
3) Run `deploy.ps1` to create the role; capture output.
4) Run `verify.ps1` to prove access as the MI (or prove denial is enforced).
5) Run `cleanup.ps1` to remove assignment + role definition.

## Check
- Screenshot or output of the verification step
- If blocked, open **Blocked Lab** issue with error text

## Cleanup
- `cleanup.ps1` removes created resources; re-run until idempotent

## Gotchas
- RBAC propagation may take minutes; retry with backoff
- DataActions vs Actions differ for some services — choose correctly