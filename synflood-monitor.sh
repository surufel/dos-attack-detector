#!/bin/bash
echo "[/] Monitoring traffic for SYN package flooding . . ."
THRESHOLD=20
COOLDOWN=2
LOG_FILE="/var/log/dos_detection.log"

# You'll need root for writting the logs in /var/log. 
if ! touch "$LOG_FILE" 2>/dev/null; then
    echo "[!] Error: cannot write to $LOG_FILE. Run as root."
    exit 1
fi

# Interrupting program with (CTRL+C)
trap "echo; echo '[*] Monitoring stopped.'; exit 0" SIGINT SIGTERM

while true; do
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S') # switch to TIMESTAMP=$(date '+%d-%m-%Y %H:%M:%S') for DAY/MONTH/YEAR time pattern
    SYN_COUNT=$(sudo timeout "$COOLDOWN" tcpdump -i any -nn 'tcp[tcpflags] & tcp-syn != 0 and tcp[tcpflags] & tcp-ack == 0' 2>/dev/null | grep -c '^[0-9]') 
    if [ "$SYN_COUNT" -gt "$THRESHOLD" ]; then
        echo "[!] WARNING: Possible DoS has been detected at: $TIMESTAMP. SYN COUNT: $SYN_COUNT | tee -a $LOG_FILE"
    else
        echo "[OK] Total SYN Count: $SYN_COUNT. No threats detected."
    fi
done

