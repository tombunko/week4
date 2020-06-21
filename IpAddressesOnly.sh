#!/bin/bash

# name of script is IpAddressesOnly.sh

# script purpose is to execute the ipinfo.sh script, and use the output by sed to display lines "IP Address" in them.

# exercise hint is to make use of the p command and -n flag.
# the "sed "p" command allows you to print specific lines based on a regex selection
# the -n suppresses printing of other lines.

# Use the pipe command to get the output from ./ipinfo.sh routed to the sed command
./ipinfo.sh | sed -n '/IP Address/'p

