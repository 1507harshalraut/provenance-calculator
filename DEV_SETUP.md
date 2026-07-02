# Developer setup — AI Code Provenance

## What you receive from the team lead

1. **`ai-provenance-1.0.4.vsix`** — VS Code extension (install once per machine)
2. **Git clone URL:** `https://github.com/1507harshalraut/provenance-calculator.git`
3. **GitHub collaborator invite** — accept before you can push

## One-time setup (each developer)

### 1. Install extension

- VS Code → Extensions → `...` → **Install from VSIX…**
- Select `ai-provenance-1.0.4.vsix`
- **Reload Window**
- Verify: `Ctrl+Shift+P` → type `AI Provenance` → commands appear

### 2. Clone the team repo

```powershell
git clone https://github.com/1507harshalraut/provenance-calculator.git
cd provenance-calculator
code .
```

Open the **repo folder** (must contain `.git`), not Desktop or a single file.

### 3. Install git hook

`Ctrl+Shift+P` → **AI Provenance: Install git post-commit hook**

### 4. Prerequisites

- Git installed
- Node.js installed (for post-commit hook)
- GitHub account added as collaborator

## Every commit

```powershell
git add .
git commit -m "Your message"
```

Must see: `[ai-provenance] Attached provenance note to ...`

If missing: `Ctrl+Shift+P` → **AI Provenance: Build manifest for HEAD commit**

## Push (both required)

```powershell
git push origin master
git push origin refs/notes/provenance
```

## Troubleshooting

| Problem | Fix |
|---------|-----|
| No AI Provenance commands | Reinstall VSIX + Reload |
| Open git repository first | `code .` inside cloned repo |
| Permission denied | Accept collaborator invite on GitHub |
| Commit not in Streamlit | Push `refs/notes/provenance` |
