# Linux Troubleshooting Scenarios

## Scenario 1: Website Is Down

Commands used:

```bash
systemctl status nginx
journalctl -u nginx
ss -tulnp
curl localhost