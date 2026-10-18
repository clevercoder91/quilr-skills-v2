#!/bin/bash
# Network Connectivity Check
echo "=== Network Connectivity Test ==="
echo "Timestamp: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
echo ""

echo "--- DNS Resolution ---"
nslookup google.com 2>/dev/null || dig google.com 2>/dev/null
echo ""

echo "--- External Connectivity ---"
curl -sk -o /dev/null -w "HTTP %{http_code} (%{time_total}s)" https://httpbin.org/get 2>/dev/null
echo ""

echo "--- Internal Network ---"
ip route 2>/dev/null || route -n 2>/dev/null
echo ""

echo "--- ARP Table ---"
arp -a 2>/dev/null
echo ""

echo "=== Network Check Complete ==="
