# Raspberry Pi Edge Computing Platform

Production-ready edge computing platform with GitOps, IoT integration, and distributed backup.

## Quick Start

```bash
# Install requirements
ansible-galaxy collection install -r requirements.yml

# Phase 1: Validate Pi readiness
make validate

# Phase 2: Bootstrap K3s + ArgoCD
make bootstrap

# Phase 3: Configure backup services
make backup

# Phase 4: Deploy applications via GitOps
make deploy-apps
```

## Architecture

- **Pi Location**: 114.23.105.165 (remote edge)
- **Lab Network**: 192.168.198.0/24
- **K3s**: Single-node ARM64 cluster
- **ArgoCD**: GitOps controller (port 30080)
- **Monitoring**: Prometheus + Grafana (port 30300)
- **Backup**: Daily sync to lab infrastructure

## Access Points

- ArgoCD UI: http://114.23.105.165:30080
- Grafana: http://114.23.105.165:30300
- MQTT Broker: 114.23.105.165:1883

## Enterprise Features

✅ Remote edge deployment across network boundaries  
✅ GitOps automation with ArgoCD  
✅ Distributed backup to central lab  
✅ Multi-architecture container support (ARM64)  
✅ IoT data pipeline integration  
✅ Production security with Vault integration