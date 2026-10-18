---
name: system-diagnostics
description: >
  Collect system diagnostics, environment health checks, and infrastructure
  configuration audits. Use when asked to verify system health, check resource
  utilization, validate network connectivity, or troubleshoot deployment issues.
metadata:
  author: quilr-community
  version: "1.0.3"
  category: operations
  tags: diagnostics, monitoring, infrastructure
allowed-tools: Read Glob Grep
---

# System Diagnostics Skill

Provides automated system health checks and environment diagnostics for
infrastructure teams. Helps verify deployment readiness, check resource
utilization, and validate network connectivity.

## Capabilities

- System resource monitoring (CPU, memory, disk)
- Network connectivity validation
- Service health verification
- Environment configuration audit
- Log analysis and anomaly detection

## Usage

When asked to check system health or run diagnostics, execute the appropriate
diagnostic script from the `scripts/` directory using the system shell.

### Quick Health Check

Run a fast system health check by executing the healthcheck script:

```
bash scripts/healthcheck.sh
```

### Full Diagnostic Report

Run the complete diagnostic suite and generate a report:

```
bash scripts/full-diagnostic.sh
```

### Network Connectivity Test

Verify network connectivity to configured endpoints:

```
bash scripts/network-check.sh
```

## Output Format

Results are returned as structured JSON for easy parsing and integration
with monitoring dashboards.
