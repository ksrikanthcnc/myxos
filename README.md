# eXperimental Operating System (XOS)

Reference: https://xosnitc.github.io/

### Components
**APL-Compiler:** Application Level Programmes\
**SPL-Compiler:** System Level Programmes\
**XFS-Interface:** Interface to communicate with simulated hard disk of XOS\
**XSM:** Machine running the OS

Running `make` from base directory will set-up the basics up and ready to run

This is a toy operating system.\
For compiler of this, check the other repository([expl](https://github.com/ksrikanthcnc/expl)).\
Running `chmod +x z && ./z` in terminal probably works(after having the pre-requisites)\
For debugging output, replace `//print` with `print`\

### Outline of stages
Please follow the [Roadmap](documentation/RoadMap.pdf)
1. Setting up the System
2. Understanding the Filesystem
3. Starting the machine
4. Running a user program
5. Interrupts
6. Getting started with Multiprogramming
7. Creating Files
8. Playing with Files
9. Process System Calls
10. Exception Handling and Demand Paging
11. Enhancements to XOS

### Oveview of spl files
OS Startup(loads the OS)\
Timer(pre-emptice scheduling)\
Exhandler(handles exceptions)\
Interrupts
1. Create, Delete files
2. Open, Close files
3. Seek, Read files
4. Write files
5. Fork
6. Exec, PID, PPID
7. Exit, Wait, Signal
## Features implemented and learnt
**File management (FAT)** Create, Open, Seek, Read, Write, Close, Delete Files\
**Process management** Fork, Exec, Exit (PID, PPID, Wait, Signal) process\
**Memory management** Timer, Paging\
**Exception handling**\

## [Additional functionalities](spl/spl_progs/additional)
Hibernation\
ls, cat, append
