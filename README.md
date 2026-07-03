# Provenance Calculator

Reference Python application for the **AI Code Provenance** pilot — per-line attribution
(human typed, human pasted, AI generated, AI pasted) with cryptographically signed git notes.

## Project layout

| Path | Purpose |
|------|---------|
| `src/calculator.py` | Core operations (add, multiply) |
| `src/operations.py` | Extended operations — provenance demo file |
| `src/main.py` | Entry point |
| `scripts/verify_provenance.py` | Verify signed git note + CI report |
| `scripts/sync_from_remote.ps1` | Pull code + fetch provenance notes (admin) |
| `.github/workflows/provenance.yml` | GitHub Actions verification |

## Developer setup (2 steps)

See [DEV_SETUP.md](DEV_SETUP.md):

1. Install **ai-provenance-1.0.5.vsix**
2. Clone repo → `code .` → commit → push

Hooks and notes sync are **automatic** in v1.0.5+.

## Admin — view team provenance

After a developer pushes:

```powershell
.\scripts\sync_from_remote.ps1
```

Or in Streamlit dashboard → **Sync from GitHub** button.

## Local verify

```powershell
python scripts/verify_provenance.py HEAD
```

## Streamlit dashboard

Run from the separate `ai_code_evaluator` project and point it at this repo path.
