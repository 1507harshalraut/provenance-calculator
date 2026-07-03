# Developer setup — AI Code Provenance (v1.0.5+)

## What you receive

1. **`ai-provenance-1.0.5.vsix`** — install once per machine
2. **Git clone URL:** `https://github.com/1507harshalraut/provenance-calculator.git`
3. **GitHub collaborator invite** — accept before you can push

## Setup (2 steps)

### Step 1 — Install extension

- VS Code → Extensions → `...` → **Install from VSIX…**
- Select `ai-provenance-1.0.5.vsix`
- **Reload Window**

### Step 2 — Clone and open repo

```powershell
git clone https://github.com/1507harshalraut/provenance-calculator.git
cd provenance-calculator
code .
```

You should see: **"AI Provenance ready — monitoring provenance-calculator"**

That's it. Hooks install automatically — no manual setup.

## Daily workflow

```powershell
git add .
git commit -m "Your message"
git push origin master
```

After commit you should see:

```text
[ai-provenance] Attached provenance note to ...
```

After push you should see:

```text
[ai-provenance] Pushed provenance notes
```

**One push is enough** — provenance notes sync automatically.

## Prerequisites

- Git installed
- GitHub collaborator access accepted

## Troubleshooting

| Problem | Fix |
|---------|-----|
| No "AI Provenance ready" message | Reinstall VSIX + Reload; open repo with `code .` (not Desktop) |
| No `[ai-provenance]` on commit | `Ctrl+Shift+P` → **AI Provenance: Install git post-commit hook** |
| Commit not in Streamlit / CI fails | Check push output for notes error; run `git push origin refs/notes/provenance` |
| Permission denied | Accept collaborator invite on GitHub |
