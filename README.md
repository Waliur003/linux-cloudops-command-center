# Linux CloudOps Command Center

A Bash-based Linux administration, monitoring, troubleshooting, and security auditing toolkit designed to demonstrate core Linux skills used in **Cloud Engineering**, **DevOps**, **Cloud Security**, **SOC operations**, and **Infrastructure Support** roles.

This project focuses on the Linux layer behind cloud environments such as **AWS EC2 instances, Kubernetes worker nodes, CI/CD runners, Docker hosts, and production application servers**. It does not depend on any cloud provider, but the skills demonstrated are directly transferable to real cloud infrastructure work.

---

## Project Overview

Cloud platforms abstract infrastructure, but cloud engineers and cloud security professionals still need strong Linux fundamentals. When an application fails, a server becomes unreachable, a service crashes, a disk fills up, or suspicious login activity appears, engineers must know how to investigate the underlying operating system.

**Linux CloudOps Command Center** is a command-line operations toolkit that automates common Linux administration and security tasks using Bash scripts.

The toolkit performs:

* System health checks
* CPU, memory, disk, and process monitoring
* Network diagnostics
* DNS and connectivity testing
* Service monitoring with `systemd`
* Log analysis with `journalctl` and `/var/log`
* Failed SSH login detection
* Sudo access review
* Open port inspection
* Risky permission checks
* Backup automation and rotation
* Full operational report generation
* Cron-based scheduled automation

This project was built to demonstrate practical Linux skills that support cloud engineering and cloud security workflows.

---

## Why This Project Matters

Many cloud issues are actually Linux issues underneath.

A cloud engineer may need to troubleshoot:

* An EC2 instance that is unreachable
* A web server that is not responding
* A full disk caused by growing logs
* A failed deployment on a Linux host
* A broken CI/CD runner
* A Docker host with resource pressure
* A Kubernetes node with service or networking issues

A cloud security analyst may need to investigate:

* Failed SSH login attempts
* Unauthorized sudo usage
* Suspicious open ports
* Misconfigured file permissions
* Unnecessary running services
* Authentication logs
* Privilege escalation indicators

This project demonstrates the Linux foundation required to support those responsibilities.

---

## Target Roles This Project Supports

This project is relevant for the following roles:

* Cloud Engineer
* Cloud Security Analyst
* Junior Cloud Security Engineer
* DevOps Engineer
* Junior Site Reliability Engineer
* SOC Analyst
* Linux Systems Administrator
* Cloud Support Engineer
* Infrastructure Engineer
* Security Operations Analyst
* Junior Platform Engineer

---

## Skills Demonstrated

| Skill Area | Tools / Commands Used |
|------------|----------------------|
| Linux Administration | `ls`, `cd`, `cat`, `find`, `chmod`, `chown`, `tar`, `cron` |
| System Monitoring | `uptime`, `free`, `df`, `du`, `ps`, `top`, `lscpu` |
| Service Management | `systemctl`, `journalctl` |
| Network Troubleshooting | `ip addr`, `ip route`, `ping`, `curl`, `dig`, `nslookup`, `ss` |
| Security Auditing | `who`, `last`, `getent`, `grep`, `find`, `sudo`, `ss` |
| Log Analysis | `/var/log/auth.log`, `/var/log/syslog`, `journalctl` |
| Bash Automation | Variables, conditions, command substitution, report generation |
| Backup Automation | `tar`, timestamped backups, cleanup policy |
| Scheduled Automation | `crontab` |

---

## Repository Structure

```bash
linux-cloudops-command-center/
│
├── README.md
│
├── scripts/
│   ├── system-health-check.sh
│   ├── security-audit.sh
│   ├── network-diagnostic.sh
│   ├── service-monitor.sh
│   ├── backup-rotation.sh
│   └── full-cloudops-report.sh
│
├── reports/
│   └── sample-report.txt
│
├── screenshots/
│   ├── health-check.png
│   ├── security-audit.png
│   ├── network-diagnostic.png
│   ├── service-monitor.png
│   └── backup-report.png
│
└── docs/
    ├── linux-hardening-checklist.md
    ├── troubleshooting-scenarios.md
    └── commands-cheatsheet.md
```

---

## Project Architecture

```text
User / Engineer
      |
      v
Linux CloudOps Command Center
      |
      |-- System Health Check
      |-- Security Audit
      |-- Network Diagnostic
      |-- Service Monitor
      |-- Backup Rotation
      |-- Full CloudOps Report
      |
      v
Reports + Screenshots + Operational Evidence
```

The project runs locally on a Linux environment and produces human-readable reports that can be reviewed by administrators, cloud engineers, or security analysts.

---

## Scripts Included

| Script | Purpose |
|----------|----------|
| `system-health-check.sh` | Checks system uptime, CPU, memory, disk usage, and top processes |
| `security-audit.sh` | Reviews logged-in users, sudo access, failed SSH attempts, open ports, and risky permissions |
| `network-diagnostic.sh` | Tests IP configuration, routing, DNS resolution, ping, HTTP response, and open ports |
| `service-monitor.sh` | Checks status, logs, and boot configuration for services like SSH, Nginx, or Docker |
| `backup-rotation.sh` | Creates compressed backups of logs and removes old backups |
| `full-cloudops-report.sh` | Runs multiple checks and generates a complete Linux operations report |

---

## Script 1: System Health Check

### Purpose

The `system-health-check.sh` script provides a quick overview of system health. It is useful for identifying performance or resource issues on a Linux server.

### What It Checks

* Hostname
* Current user
* System uptime
* Load average
* Memory usage
* Disk usage
* CPU information
* Top memory-consuming processes
* Top CPU-consuming processes

### Commands Used

```bash
hostname
whoami
uptime
free -h
df -h
lscpu
ps aux
```

### Run Command

```bash
./scripts/system-health-check.sh
```

### Cloud Relevance

This maps directly to troubleshooting EC2 instances, Linux-based application servers, Kubernetes nodes, CI/CD runners, and container hosts.

---

## Script 2: Security Audit

### Purpose

The `security-audit.sh` script performs basic Linux security checks that are useful for cloud security and SOC-style investigations.

### What It Checks

* Current logged-in users
* Recent login history
* Users with sudo access
* Failed SSH login attempts
* Count of failed SSH attempts
* Open listening ports
* World-writable files
* SUID files

### Commands Used

```bash
who
last
getent group sudo
grep
wc -l
ss -tulnp
find
```

### Run Command

```bash
./scripts/security-audit.sh
```

### Cloud Security Relevance

This script demonstrates skills used in:

* Incident response
* Linux hardening
* SSH brute-force investigation
* Privilege review
* Open port auditing
* Server misconfiguration detection

---

## Script 3: Network Diagnostic

### Purpose

The `network-diagnostic.sh` script tests the network configuration and connectivity of a Linux machine.

### What It Checks

* IP address configuration
* Routing table
* DNS lookup
* Ping connectivity
* HTTP header response
* Open listening ports

### Commands Used

```bash
ip addr
ip route
dig
nslookup
ping
curl
ss -tulnp
```

### Run Command

```bash
./scripts/network-diagnostic.sh google.com
```

You can replace `google.com` with another domain:

```bash
./scripts/network-diagnostic.sh example.com
```

### Cloud Relevance

This maps directly to troubleshooting:

* DNS failures
* Security group or firewall issues
* Port exposure
* Application connectivity
* Load balancer target issues
* Server-to-server communication problems

---

## Script 4: Service Monitor

### Purpose

The `service-monitor.sh` script checks the status and logs of a Linux service managed by `systemd`.

### What It Checks

* Service status
* Recent service logs
* Whether the service is enabled on boot

### Commands Used

```bash
systemctl status
journalctl -u
systemctl is-enabled
```

### Run Command

Check SSH:

```bash
./scripts/service-monitor.sh ssh
```

Check Nginx:

```bash
./scripts/service-monitor.sh nginx
```

Check Docker:

```bash
./scripts/service-monitor.sh docker
```

### Cloud Relevance

This maps directly to troubleshooting production services running on cloud-hosted Linux servers.

Examples:

* Web server down
* SSH not working
* Docker daemon failure
* CI/CD runner service failure
* Logging agent not running
* Security agent not running

---

## Script 5: Backup Rotation

### Purpose

The `backup-rotation.sh` script creates compressed backups of log files and removes older backup files after a retention period.

### What It Does

* Creates a backup directory
* Compresses `/var/log`
* Adds a timestamp to the backup file
* Lists current backups
* Deletes backups older than 7 days

### Commands Used

```bash
mkdir
tar
date
ls
find
```

### Run Command

```bash
./scripts/backup-rotation.sh
```

### Cloud Relevance

This demonstrates foundational backup automation logic that maps to:

* Log archival
* Disaster recovery planning
* Scheduled maintenance
* Retention policies
* Operational automation

---

## Script 6: Full CloudOps Report

### Purpose

The `full-cloudops-report.sh` script runs multiple checks and saves the results into a timestamped report file.

### What It Includes

* System health report
* Security audit report
* Network diagnostic report
* SSH service monitoring report

### Run Command

```bash
./scripts/full-cloudops-report.sh
```

### Output Location

Reports are saved inside:

```bash
reports/
```

Example:

```bash
reports/cloudops-report-2026-06-10_14-30-00.txt
```

### Cloud Relevance

This simulates an operational runbook report that could be used during:

* Daily infrastructure checks
* Incident response
* Security reviews
* System baselining
* Troubleshooting workflows

---

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/linux-cloudops-command-center.git
cd linux-cloudops-command-center
```

### 2. Make Scripts Executable

```bash
chmod +x scripts/*.sh
```

### 3. Run Individual Scripts

System health check:

```bash
./scripts/system-health-check.sh
```

Security audit:

```bash
./scripts/security-audit.sh
```

Network diagnostic:

```bash
./scripts/network-diagnostic.sh google.com
```

Service monitor:

```bash
./scripts/service-monitor.sh ssh
```

Backup rotation:

```bash
./scripts/backup-rotation.sh
```

Full report:

```bash
./scripts/full-cloudops-report.sh
```

---

## Automation with Cron

This project includes a scheduled automation example using cron.

To edit cron jobs:

```bash
crontab -e
```

Example cron job:

```bash
0 2 * * * /home/ubuntu/linux-cloudops-command-center/scripts/full-cloudops-report.sh
```

This runs the full report every day at 2:00 AM.

### Why Cron Matters

Cron is a Linux scheduling tool. In cloud environments, similar scheduled automation patterns appear in:

* AWS EventBridge scheduled rules
* Scheduled Lambda functions
* Backup jobs
* Log rotation jobs
* Health checks
* Compliance scans

---

## Example Output

Example full report output:

```text
====================================
   Linux CloudOps Full Report
   Generated: Wed Jun 10 14:30:00 UTC 2026
====================================

######## SYSTEM HEALTH ########
Hostname: ubuntu-server
Uptime: up 2 hours
Memory Usage: 1.2G used / 3.8G total
Disk Usage: 42%
Top Processes: nginx, sshd, systemd

######## SECURITY AUDIT ########
Logged-in Users: ubuntu
Sudo Group: ubuntu
Failed SSH Attempts: 3
Open Ports: 22, 80

######## NETWORK DIAGNOSTIC ########
DNS Lookup: successful
Ping Test: successful
HTTP Header Test: 200 OK

######## SERVICE MONITOR ########
SSH Status: active
SSH Boot Status: enabled
```

---

## Screenshots



### System Health Check

<img width="737" height="629" alt="Screenshot 1" src="https://github.com/user-attachments/assets/2a2b4265-0702-4d42-bbd0-be410214b3fe" />
<img width="1313" height="277" alt="Screenshot 2" src="https://github.com/user-attachments/assets/6fa8418f-aa3b-4783-b0a2-a3eb6f2fd884" />



### Security Audit

<img width="1810" height="501" alt="Screenshot 3" src="https://github.com/user-attachments/assets/8516fad9-beac-490e-b683-3fab9fec6ed7" />
<img width="401" height="261" alt="Screenshot 4" src="https://github.com/user-attachments/assets/8384fd9e-3ad2-4fd3-af43-4d1aeeec64b1" />



### Network Diagnostic

<img width="1066" height="581" alt="Screenshot 5" src="https://github.com/user-attachments/assets/6c6feca3-25c9-483a-a1a8-58144f601f9c" />
<img width="798" height="564" alt="Screenshot 6" src="https://github.com/user-attachments/assets/a2f8e732-1f6b-41d2-b2d0-30145b0ee233" />
<img width="1885" height="562" alt="Screenshot 7" src="https://github.com/user-attachments/assets/74f86238-3d9e-48f8-8f85-e8a606cf01c4" />
<img width="1837" height="287" alt="Screenshot 8" src="https://github.com/user-attachments/assets/cc084d03-692f-48f0-9d33-1c9be563de27" />





### Service Monitor

<img width="1887" height="517" alt="Screenshot 9" src="https://github.com/user-attachments/assets/001e2a62-4f0d-4797-a266-0671347e0283" />
<img width="1908" height="572" alt="Screenshot 10" src="https://github.com/user-attachments/assets/3d5b1503-63d5-485f-8227-ece1ff894c2b" />



### Backup Report

<img width="1267" height="538" alt="Screenshot 11" src="https://github.com/user-attachments/assets/b150a40d-a9e3-4d1c-a6ab-1c7981b6e1af" />


---

## Linux Hardening Concepts Demonstrated

This project demonstrates several Linux hardening concepts:

### Identity and Access

* Review active users
* Review sudo group membership
* Check login history
* Monitor failed login attempts

### File Permission Security

* Understand Linux permission models
* Detect world-writable files
* Review SUID files
* Apply least privilege principles

### Network Security

* Check listening ports
* Identify exposed services
* Test connectivity
* Troubleshoot DNS and routing issues

### Service Security

* Monitor running services
* Review service logs
* Verify boot-time service configuration
* Identify unnecessary or failed services

### Logging and Monitoring

* Use system logs for investigation
* Analyze authentication events
* Review service-specific logs
* Generate operational reports

---

## Troubleshooting Scenarios Covered

### Scenario 1: Server Is Slow

Tools used:

```bash
uptime
free -h
df -h
ps aux --sort=-%mem
ps aux --sort=-%cpu
```

Investigation steps:

* Check load average
* Check memory pressure
* Check disk usage
* Identify high CPU processes
* Identify high memory processes

---

### Scenario 2: SSH Login Is Failing

Tools used:

```bash
systemctl status ssh
journalctl -u ssh
grep "Failed password" /var/log/auth.log
chmod 400 key.pem
```

Investigation steps:

* Check if SSH service is running
* Review SSH logs
* Check failed login attempts
* Verify private key permissions
* Confirm user account exists

---

### Scenario 3: Web Server Is Not Responding

Tools used:

```bash
systemctl status nginx
journalctl -u nginx
ss -tulnp
curl localhost
```

Investigation steps:

* Check Nginx status
* Review service logs
* Confirm port 80 or 443 is listening
* Test local HTTP response
* Check firewall rules

---

### Scenario 4: DNS or Internet Connectivity Issue

Tools used:

```bash
ip addr
ip route
dig example.com
nslookup example.com
ping example.com
curl -I https://example.com
```

Investigation steps:

* Check IP configuration
* Check routing table
* Test DNS resolution
* Test ICMP connectivity
* Test HTTP/HTTPS response

---

### Scenario 5: Disk Space Is Full

Tools used:

```bash
df -h
du -sh /var/log
find /var/log -type f
```

Investigation steps:

* Identify full partition
* Locate large directories
* Review log growth
* Archive or rotate logs
* Clean unnecessary files

---

## Cloud Engineering Mapping

| Linux Skill | Cloud Engineering Use Case |
|-------------|----------------------------|
| `systemctl` | Troubleshoot services on EC2 or cloud VMs |
| `journalctl` | Review service logs during incidents |
| `ss -tulnp` | Identify exposed ports |
| `df -h` | Diagnose disk capacity issues |
| `free -h` | Diagnose memory pressure |
| `curl` | Test APIs, web apps, and load balancer targets |
| `dig` / `nslookup` | Troubleshoot DNS issues |
| `cron` | Understand scheduled automation patterns |
| `tar` | Backup and archival operations |
| Bash scripting | Automate infrastructure operations |

---

## Cloud Security Mapping

| Linux Security Skill | Cloud Security Use Case |
|---------------------|-------------------------|
| Failed SSH login detection | Brute-force investigation |
| Sudo group review | Privilege access review |
| Open port checks | Attack surface analysis |
| World-writable file checks | Misconfiguration detection |
| SUID file review | Privilege escalation review |
| Authentication log analysis | Incident response |
| Service monitoring | Security agent validation |
| Backup rotation | Recovery and resilience planning |

---

## Sample Resume Bullet Points

### Cloud Engineering Version

Built a Linux CloudOps Command Center using Bash to automate system health checks, service monitoring, network diagnostics, log analysis, and backup rotation, demonstrating Linux troubleshooting skills used in cloud engineering environments.

### Cloud Security Version

Developed a Linux security auditing toolkit that detects failed SSH logins, reviews sudo access, checks open listening ports, audits risky permissions, and generates incident-ready reports for cloud security operations.

### DevOps Version

Created a Bash-based Linux operations toolkit that automates monitoring, diagnostics, reporting, and scheduled maintenance tasks using `systemd`, `journalctl`, `cron`, and core Linux utilities.

---

## What I Learned

Through this project, I practiced:

* Navigating Linux systems from the command line
* Reading system and authentication logs
* Managing and monitoring services with `systemd`
* Diagnosing network issues with Linux tools
* Understanding permissions, ownership, and privilege boundaries
* Automating repetitive administration tasks with Bash
* Generating operational reports
* Connecting Linux fundamentals to real cloud engineering and security workflows

---

## Future Improvements

Potential future enhancements:

* Add JSON report output
* Add email notifications
* Add Slack or Discord alert integration
* Add Docker container health checks
* Add CIS Linux benchmark checks
* Add log anomaly detection
* Add threshold-based alerts for CPU, memory, and disk
* Add HTML report generation
* Add support for Amazon Linux and RHEL-based systems
* Add automated remediation options
* Add GitHub Actions workflow for shell script linting

---

## Project Status

Current status: **Completed core version**

Implemented:

* System health check
* Security audit
* Network diagnostic
* Service monitor
* Backup rotation
* Full report generation
* Cron automation example
* Documentation
* Screenshots
* Sample report

---

## Author

**Waliur Sun**
Computer Science Student | Aspiring Cloud Security Engineer / Cloud Engineer

Focus areas:

* AWS Cloud
* Terraform
* Linux
* Cloud Security
* DevSecOps
* Kubernetes
* Infrastructure Automation

---

## Disclaimer

This project is for educational and portfolio purposes. It demonstrates Linux operations and security auditing concepts in a controlled environment. Some commands require `sudo` privileges and should be used carefully on production systems.
