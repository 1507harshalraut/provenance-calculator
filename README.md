# Provenance Calculator

Reference Python application for the **AI Code Provenance** pilot — per-line attribution
(human typed, human pasted, AI generated, AI pasted) with cryptographically signed git notes.

## Project layout

| Path | Purpose |
|------|---------|
| `src/calculator.py` | Core operations (add, multiply) |
| `src/operations.py` | Extended operations — provenance demo file |
| `src/main.py` | Entry point |
| `src/utils.py` | Helpers |
| `src/config.py` | App config |
| `scripts/verify_provenance.py` | Verify signed git note + CI report |
| `.github/workflows/provenance.yml` | GitHub Actions verification |

## Developer setup

See [DEV_SETUP.md](DEV_SETUP.md) for VSIX install, git hook, and push instructions.

## Push provenance notes

After each commit with the AI Provenance extension active:

```powershell
git push origin master
git push origin refs/notes/provenance
```

Both pushes are required — code alone does not include line-level proof.

## Local verify

```powershell
python scripts/verify_provenance.py HEAD
```

## Streamlit dashboard

Run the dashboard from the separate `ai_code_evaluator` project and point it at this repo path.
