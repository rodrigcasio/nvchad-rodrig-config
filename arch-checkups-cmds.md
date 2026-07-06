# Important commands for LINUX ARCH checkups

## Storage && Disks

`df -h`: Check free/used disk space on all mounted partitions.
`lsblk`: View all partitions, their sizes, and where they are mounted.
`du -sh` [path]: Check the size of a specific folder or file.
`ncdu`: (Installable) An interactive disk usage analyzer (great for finding big files).

## CPU & Memory
 
`free -h`: Check RAM and swap usage.
`uptime`: See how long the system has been up and the CPU load average.
`lscpu`: Detailed information about your processor's architecture and cores.
`htop `or `btop`: (Installable) Interactive real-time monitors for CPU, RAM, and processes.

## System Health & logs 

`uname `-r: Check your current kernel version.
`journalctl `-p 3 -xb: Show only errors from the current boot.
`systemctl --failed`: List any services that failed to start.
`sensors`: (Requires lm_sensors) Check hardware temperatures and fan speeds

## Network & Updates

`ip a`: View your IP addresses and network interface status.
`checkupdates`: (Part of pacman-contrib) See how many packages are ready for an update without syncing.

# Sysstat Commands for Arch Linux

The `sysstat` package provides a suite of tools for monitoring system performance and usage activity.
`sudo systemctl enable --now sysstat`

---

### 1. CPU Monitoring (`mpstat`)
Reports individual or combined processor statistics.
*   **`mpstat`**: Displays a summary of CPU usage since boot.
*   **`mpstat -P ALL`**: Shows statistics for **every individual core**.
*   **`mpstat 2 5`**: Reports stats every 2 seconds, for a total of 5 times.

### 2. Disk & I/O Monitoring (`iostat`)
Reports CPU utilization and I/O statistics for block devices and partitions.
*   **`iostat`**: Quick summary of CPU usage and disk I/O.
*   **`iostat -xz 1`**: Detailed (extended) disk statistics updated every second.

### 3. System Activity Reporter (`sar`)
The primary tool for collecting, reporting, and saving system activity information.
*   **`sar -u 1`**: Real-time CPU utilization (updates every second).
*   **`sar -r`**: View memory (RAM) and swap space usage statistics.
*   **`sar -n DEV`**: Check network interface activity and speeds.

### 4. Process-Specific Stats (`pidstat`)
Reports statistics for individual Linux tasks or processes.
*   **`pidstat 1`**: Live CPU usage per process.
*   **`pidstat -r`**: Real-time memory usage per process.
*   **`pidstat -d`**: Reports I/O statistics (read/write speeds) per task.

---
**Tip:** Keep an eye on the `%iowait` column; a high value indicates the CPU is sitting idle while waiting for your disk (SSD/HDD) to complete a task.

