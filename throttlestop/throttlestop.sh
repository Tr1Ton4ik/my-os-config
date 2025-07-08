modprobe msr
wrmsr 0x1FC 2359388
cpupower frequency-set --min 3100MHz
cpupower frequency-set --max 3100MHz
cpupower frequency-set --governor performance
