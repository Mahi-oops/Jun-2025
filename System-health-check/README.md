# 🧠 System Health + Email Automation 📧  
**Because even Linux deserves a health checkup — and a way to brag about it via Gmail.**

---

## 🚀 Overview

This tiny but mighty project does two things:
1. Runs a **system health check** — scanning your disk space, memory, services, and CPU usage.
2. Mails that shiny report straight to your inbox using **Postfix + Gmail SMTP**.

It’s like your Linux machine saying:
> “Hey human, I’m alive and healthy. Here’s my daily blood test 🧾💪.”

---

## 🧩 What’s Inside

| Component | Description |
|------------|--------------|
| 🐧 **OS** | Ubuntu / Debian (WSL works too) |
| 💌 **Mail Agent** | Postfix |
| 🔐 **Auth Type** | Gmail App Password |
| 🌍 **Relay Host** | smtp.gmail.com:587 (TLS) |
| 📄 **Report File** | `/mnt/c/Users/Admin/dockerfolder/system_health_report.txt` |
| 🧰 **Script Name** | `system_health.sh` |

---

## ⚙️ 1. The Script — `system_health.sh`

```bash
#! /bin/bash
echo "==============================="
echo "    System Health Check        "
echo "==============================="
EMAIL="yourmail@gmail.com"
REPORT="/mnt/c/Users/Admin/dockerfolder/system_health_report.txt"
DISK=$(df -h)
{
echo "-------------------------------------------------------"
echo "                   Checking Disk"
echo "-------------------------------------------------------"
echo "Disk space is $DISK" 
echo "-------------------------------------------------------"
echo "               Checking Memory status"
echo "-------------------------------------------------------"
MEMORY=$(free -h)
echo "$MEMORY"
echo "-------------------------------------------------------"
echo "                  Checking services"
echo "-------------------------------------------------------"
services=$(sudo systemctl --type=service)
echo "$services"
echo "-------------------------------------------------------"
echo "                  Checking CPU Usage "
echo "-------------------------------------------------------"
top -bn1 | grep "Cpu"
} > $REPORT
mail -s "CPU Usage Report" $EMAIL < $REPORT

💡 Pro tip:
Run this script via cron to get daily health reports — just like a “Good morning” message from your server.

🧙 2. Mail Setup — Postfix + Gmail SMTP
So your Linux system can email you like a responsible adult.

🧾 Installation
bash
Copy code
sudo apt update
sudo apt install postfix mailutils libsasl2-modules
When prompted:
Select “Internet Site”
Set the system mail name (example: myserver.local)

🔧 Configure Postfix
Copy code
sudo nano /etc/postfix/main.cf
#"Add below lines at the end:"
relayhost = [smtp.gmail.com]:587
smtp_use_tls = yes
smtp_sasl_auth_enable = yes
smtp_sasl_password_maps = hash:/etc/postfix/sasl_passwd
smtp_sasl_security_options = noanonymous
smtp_tls_security_level = encrypt
smtp_tls_CAfile = /etc/ssl/certs/ca-certificates.crt
inet_protocols = ipv4

🔑 Gmail App Password Setup
Enable 2-Step Verification
(Yeah, Google insists. It’s their version of “Are you a robot?”)

Generate an App Password:
Go to https://myaccount.google.com/apppasswords
Choose App: Mail
Choose Device: Other (e.g., “Postfix”)
Click Generate → Copy the 16-character password
Store credentials securely:

bash
Copy code
sudo nano /etc/postfix/sasl_passwd

Add:
[smtp.gmail.com]:587 yourgmail@gmail.com:your_app_password
Lock it down and activate:

bash
Copy code
sudo chmod 600 /etc/postfix/sasl_passwd
sudo postmap /etc/postfix/sasl_passwd
sudo systemctl restart postfix
📬 Test Email
bash
Copy code
echo "This is a test email from Linux via Gmail SMTP." | mail -s "Postfix Gmail Test" your_email@gmail.com
Or send your system report:

bash
Copy code
mail -s "CPU Usage Report" your_email@gmail.com < /mnt/c/Users/Admin/dockerfolder/system_health_report.txt

🧰 Troubleshooting (a.k.a. “Mail Drama”)

1️⃣ Network unreachable
(connect to smtp.gmail.com[2404:6800:4003:c04::6d]:587: Network is unreachable)
 
💡 Fix:
Your system is trying to use IPv6 but doesn’t support it.
inet_protocols = ipv4 #If you find inet_protocols = all or inet_protocols = ipv6 in /etc/postfix/main.cf,change it to inet_protocols = ipv4 to force Postfix to use IPv4 and fix the network unreachable error.
sudo systemctl restart postfix

2️⃣ Authentication failed
535-5.7.8 Username and Password not accepted

💡 Fix:
Use the App Password, not your regular Gmail password.

3️⃣ Check logs like a pro
sudo tail -f /var/log/mail.log

4️⃣ Check mail queue
mailq

5️⃣ Nuke stuck messages
Copy code
sudo postsuper -d ALL

✅ Quick Checklist
Step	Status
Postfix installed	✅
Gmail App Password created	✅
/etc/postfix/sasl_passwd configured	✅
Permissions set	✅
Postfix restarted	✅
Test mail sent	✅

🎯 Command Recap

Copy code
sudo apt install postfix mailutils libsasl2-modules
sudo nano /etc/postfix/main.cf
sudo nano /etc/postfix/sasl_passwd
sudo chmod 600 /etc/postfix/sasl_passwd
sudo postmap /etc/postfix/sasl_passwd
sudo systemctl restart postfix
echo "Hello World" | mail -s "SMTP Test" youremail@gmail.com
sudo tail -f /var/log/mail.log

🤓 Credits
Written by Mahesh Avula
Inspired by too many “MAILER-DAEMON” errors.
Tested on Ubuntu 22.04 & Debian 12

Motto:
“If it doesn’t send, it’s not my fault — it’s Google’s security team again.” 😅

🪄 Final Thoughts
This repo is your Linux’s daily diary —
it checks its vitals, writes a report, and then politely mails it to you.

If only humans were this organized 🧑‍💻💌