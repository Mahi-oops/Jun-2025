#! /bin/bash
echo "==============================="
echo "    System Health Check        "
echo "==============================="
EMAIL="avula2302@gmail.com"
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
mail -s "CPU Usage Report" $EMAIL < /mnt/c/Users/Admin/dockerfolder/system_health_report.txt