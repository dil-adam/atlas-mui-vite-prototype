# Atlas MUI Vite Prototype

A [Vite](https://vitejs.dev)+React app pre-configured with the Diligent **Atlas** design system (MUI v7, Atlas Light theme, `@diligentcorp/atlas-react-bundle`). Use it for UI prototypes; deploy via **git push** to this repo (e.g. [VibeSharing](https://vibesharing.app) + Vercel).

## What’s included

- **Atlas React bundle** — Components, tokens, icons, and `AppLayout` (MUI X Pro licensed through the layout).
- **MCP** — `.mcp.json` (and editor copies) for Atlas, MUI docs, and Chrome DevTools. Token is set when the project is prepared for download; for a clone, ensure your client has a valid `Authorization: Bearer atlas_sk_…` for Atlas if needed.
- **Agent rules** — `AGENTS.md` and `CLAUDE.md` describe strict workflow and MCP usage for AI assistants.

## Quick start

```bash
pnpm install
pnpm dev
```

Add pages under `src/pages/`, update routes in `App.tsx`, and use Atlas from `@diligentcorp/atlas-react-bundle` per `AGENTS.md`.

## Project layout (Vite)

| Path | Purpose |
|------|---------|
| `index.html` | Vite entry |
| `src/` | `App.tsx`, pages, components |
| `public/` | Static files |

## Atlas MCP (grouped tools)

| Tool / resource | Purpose |
|-----------------|--------|
| `get_atlas_top_icons` | ~100 most-used icon **names** (rank = array index) |
| `get_atlas_components_by_group` | `level`: `atomic` / `complex` / `pattern`, or `category` from schema |
| `get_atlas_tokens_by_group` | `spacing`, `color`, `typography`, `shadow`, `breakpoints` |
| `get_atlas_component_docs` | Per-component docs |
| `atlas://design-tokens-css` | Combined Lens + Atlas Light CSS variables (resource) |
| `atlas://icons` | Full icon catalog (resource) |

## Deployment

This repository is set up for **Vercel**-style deploys from `main` (VibeSharing uses that flow). **Only** deploy by pushing to Git—do not use `vercel deploy` from the CLI or zip-based APIs. See `.cursor/rules/deploy.mdc` and rule **44** in `AGENTS.md`.

## Learn more

- [`AGENTS.md`](./AGENTS.md) — Full rules for AI agents
- [Atlas documentation](https://atlas.diligent.com/)
- [MUI Storybook (Atlas)](https://atlas.diligent.com/storybook-static-mui/)

## Source

Consolidated from the Atlas monorepo `demo/mui-vite-prototype` and the VibeSharing template structure (Next.js app removed; Vite-only).
