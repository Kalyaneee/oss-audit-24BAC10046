# oss-audit-24BAC10046
# OSS Audit — Git
**Student:** Kalyanee  
**Roll Number:** 24BAC10046  
**Course:** Open Source Software — VITyarthi  
**Software Audited:** Git (licensed under GNU GPL v2)

---

## About This Project
This repository contains five shell scripts written as part of the Open Source Audit capstone project. The scripts demonstrate practical Linux skills and explore the open-source philosophy of Git.

---

## Scripts

### Script 1 — System Identity Report (`script1_system_identity.sh`)
Displays a welcome screen with system info: kernel version, distro, logged-in user, uptime, date/time, and the OS license.  
**Concepts:** variables, echo, command substitution `$()`

**Run:**
```bash
bash script1_system_identity.sh
```

### Script 2 — FOSS Package Inspector (`script2_package_inspector.sh`)
Checks if Git is installed, fetches its version, and prints a philosophy note using a case statement.  
**Concepts:** if-then-else, case statement, command -v, pipe with grep

**Run:**
```bash
bash script2_package_inspector.sh
```

### Script 3 — Disk and Permission Auditor (`script3_disk_permission_auditor.sh`)
Loops through key system directories and reports permissions, owner, group, and size. Also checks Git's config file.  
**Concepts:** for loop, ls -ld, du, awk, cut

**Run:**
```bash
bash script3_disk_permission_auditor.sh
```

### Script 4 — Log File Analyzer (`script4_log_analyzer.sh`)
Reads a log file line by line, counts keyword matches, and prints the last 5 matching lines.  
**Concepts:** while read loop, if-then, counter variables, command-line arguments

**Run:**
```bash
bash script4_log_analyzer.sh /var/log/syslog error
```

### Script 5 — Open Source Manifesto Generator (`script5_manifesto_generator.sh`)
Asks the user 3 interactive questions and generates a personalised open source philosophy statement saved to a .txt file.  
**Concepts:** read, string concatenation, writing to file with `>>`, date command

**Run:**
```bash
bash script5_manifesto_generator.sh
```

---

## Dependencies
- Bash (pre-installed on all Linux systems)
- Git (`sudo apt install git` or `sudo yum install git`)
- Standard Linux utilities: `uname`, `whoami`, `uptime`, `du`, `ls`, `grep`, `awk`

---

## How to Run on Linux
1. Clone this repository:
```bash
   git clone https://github.com/Kalyaneee/oss-audit-24BAC10046.git
```
2. Navigate into the folder:
```bash
   cd oss-audit-24BAC10046
```
3. Make scripts executable:
```bash
   chmod +x *.sh
```
4. Run any script:
```bash
   bash script1_system_identity.sh
```
