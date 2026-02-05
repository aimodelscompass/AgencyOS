# AgencyOS: The Sovereign Marketing Intern

**Turn OpenClaw into a Senior Marketing Strategist.**

AgencyOS is a pre-configured "brain" for OpenClaw designed for agencies and freelancers. It doesn't just chat; it remembers your clients, mimics their voice, and executes complex research workflows.

## 🧠 Features

- **Client Memory:** Dedicated profile structure to store brand guidelines, do's/don'ts, and past campaigns.
- **Voice Cloning:** "Voice Profiles" that ensure every draft sounds exactly like the client, not an AI.
- **Workflow Engine:** Pre-built task scripts for Research, Content Repurposing, and Competitive Analysis.
- **Sovereign & Secure:** Runs 100% locally. No data leaks to ChatGPT. No monthly SaaS fees.

## 🚀 Quick Start

1. **Clone & Setup:**
   ```bash
   git clone https://github.com/aimodelscompass/AgencyOS.git
   cd AgencyOS
   ./setup.sh
   ```

2. **Onboard a Client:**
   Edit `workspace/memory/clients/template.md` and save it as `[ClientName].md`.

3. **Run a Task:**
   ```
   "Based on the @Nike profile, research the latest sustainable footwear trends and draft 3 LinkedIn posts."
   ```

## 📂 Structure

- `/workspace/memory/clients`: Your CRM. One file per client.
- `/workspace/memory/voice_profiles`: Style guides and tone examples.
- `/workspace/tasks`: Pre-engineered prompts for complex jobs.
- `setup.sh`: One-click installer for Docker + OpenClaw + AgencyOS Config.

---
*Built by [AI Models Compass](https://x.com/aimodelscompass).*
