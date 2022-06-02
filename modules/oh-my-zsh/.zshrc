export PATH=$(echo "$PATH" | sed -e 's/:\/mnt[^:]*//g') # Remove bad windows paths
