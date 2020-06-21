#!/bin/bash

# the following command outputs the info from running the ifconfig
# command, and stores it to the variable named net_info
# using a bash file

net_info="$(ifconfig)"
#parse out the ip address lines using sed


# The variable named addresses contains a formatted output of this net_info
# where: \n causes a new line break, \t causes a tab insert on the output
#        -n prevents the output of all the lines, and 
#        -p causes the changed lines to be output.

addresses=$(echo "$net_info" | sed -n '/inet / {
    s/inet /IP Address: /
    s/netmask /\n\t\t Subnet Mask:/
    s/broadcast /\n\t\t Broadcast Address:/
    p
}')

echo -e "IP addresses on this computer are:\n$addresses"

# note: the curley brackets {} allow for multiple substitutions on the same line of output
