---
name: prd-to-testplan
description: Use when a user provides a PRD and needs a structured QA test plan with requirement traceability.
---

# PRD to Test Plan Generator

## When to Use
Use this skill when the user provides a PRD
and asks for a QA test plan.

## Workflow

1. Read the complete PRD.
2. Identify functional requirements.
3. Identify non-functional requirements.
4. Extract acceptance criteria.
5. Identify dependencies and risks.
6. Identify missing or ambiguous requirements.
7. Read `test-plan-template.md` from this skill's folder.
8. Generate the test plan using the template's exact structure.
9. Verify that all documented requirements are covered.
10. If the template is unavailable, report the issue.
11. Assign requirement IDs (REQ-01, REQ-02, etc.)
    in the order requirements appear in the PRD.
12. Map every test scenario to one or more requirement IDs.
13. Verify that every PRD requirement has test coverage.
14. Mark additional QA scenarios as "Proposed".
15. Report uncovered requirements separately.

## Output Format

Use the structure defined in
`test-plan-template.md`.

Populate each section using information
from the PRD.

If information is missing, write
"Not specified in PRD".

Do not remove template sections.

## Guardrails
- Do not invent requirements or acceptance criteria.
- Distinguish PRD facts from proposed QA tests.
- Do not claim a scenario passed unless executed.
- Do not mark a requirement covered unless a
  test scenario validates it.
- Preserve the test plan template structure.
