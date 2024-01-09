### FILE SYSTEM ###
mkcd() { # make dir and cd into 
    mkdir -p "$1" && cd "$1"
}

### SYSTEM INFO ###
sysinfo() {
    echo "Hostname: $(hostname)"
    echo "Uptime: $(uptime)"
    echo "Operating System: $(uname -o)"
    echo "Kernel Version: $(uname -r)"
    echo "Arch: $(uname -m)"
}

### NETWORKING ###
checknet() {
    ping -c 1 google.com > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Internet is up."
    else
        echo "Internet is down."
    fi
}
