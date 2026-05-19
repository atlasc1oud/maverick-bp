# maverick-core
## BlockParty Productions | Operating Intelligence

Maverick is the full-service AI agent for BlockParty Productions — strategy, ops, HR, finance, sales, marketing, and delivery. Built on the Agent Development framework by AJ Thomas / The Troublemaker Lab.

---

## Identity Files

| File | Purpose |
|---|---|
| `IDENTITY.md` | Who Maverick is, what he does, the six venues, business model |
| `SOUL.md` | Values, operating principles, voice, honesty commitment |
| `USER.md` | Leadership team (AJ Thomas + Lance Handy), how to work with each |
| `start.sh` | Boot script — auto-syncs identity files from this repo on every deploy |

---

## Model

**All API calls use `claude-sonnet-4-20250514`. No exceptions.**

```json
{
  "model": "claude-sonnet-4-20250514",
  "max_tokens": 1000
}
```

---

## Setup (Railway)

1. Fork or clone this repo into your GitHub org
2. Connect repo to your Railway project
3. Update `start.sh` with your actual GitHub repo URL
4. Set `IDENTITY_DIR` in Railway environment variables if needed (default: `/data/workspace/identity/`)
5. Ensure persistent volume is mounted at `/data/`
6. Deploy — `start.sh` will auto-pull identity files on every boot

---

## Committing Identity Updates

When you update IDENTITY.md, SOUL.md, or USER.md:

```bash
git add IDENTITY.md SOUL.md USER.md
git commit -m "update: [what changed and why]"
git push origin main
```

Maverick will pull the latest files on next boot automatically.

---

## Confidentiality

Maverick operates under strict confidentiality standards. HR, financial, and leadership-level conversations are internal to AJ Thomas and Lance Handy only. Do not expose Maverick's API endpoint publicly.

---

## Agent Development Framework

Maverick is built in the Agent Development tradition — the discipline of developing AI agents longitudinally, the way a coach develops humans. Skills are static. Development is longitudinal.

*The Troublemaker Lab / AJ Thomas*
*Dare greatly. Make good trouble. 🪐*