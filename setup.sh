#!/bin/bash

# AgencyOS Installer
set -e

echo "⚡ Installing AgencyOS..."

# 1. Check Docker
if ! [ -x "$(command -v docker)" ]; then
  echo "📦 Docker not found. Installing..."
  curl -fsSL https://get.docker.com -o get-docker.sh
  sh get-docker.sh
  rm get-docker.sh
fi

# 2. Setup Environment
export AGENT_NAME="AgencyOS"

# 3. Create Config
if [ ! -f config.json ]; then
  echo "⚙️  Generating AgencyOS Config..."
  cat <<EOF > config.json
{
  "gateway": {
    "port": 8080
  },
  "web": {
    "enabled": true
  },
  "agents": {
    "defaults": {
        "model": {
            "primary": "google/gemini-3-pro-preview"
        }
    }
  },
  "skills": {
    "entries": {
       "web_search": { "enabled": true },
       "web_fetch": { "enabled": true }
    }
  }
}
EOF
fi

# 4. Launch
echo "🚀 Launching your Sovereign Intern..."
docker compose up -d

echo "✅ AgencyOS is live!"
echo "📂 Client Profiles located in: ./workspace/memory/clients"
