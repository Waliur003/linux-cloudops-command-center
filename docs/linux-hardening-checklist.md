# Linux Hardening Checklist

## Identity and Access
- Disable direct root SSH login.
- Use SSH key authentication.
- Limit sudo access to trusted users.
- Review `/etc/passwd` and `/etc/group`.

## File Permissions
- Use least privilege.
- Avoid world-writable files.
- Use `chmod 600` for sensitive files.
- Use `chmod 400` for private keys.

## Network Security
- Check open ports using `ss -tulnp`.
- Allow only required ports.
- Enable UFW firewall.
- Block unnecessary services.

## Logging and Monitoring
- Review `/var/log/auth.log`.
- Review `journalctl`.
- Monitor failed SSH attempts.
- Monitor privilege escalation events.

## Service Security
- Disable unused services.
- Keep packages updated.
- Restart services after updates.