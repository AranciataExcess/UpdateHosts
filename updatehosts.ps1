import-module bitstransfer

# tweak the line below to your host file variant
Start-BitsTransfer https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling/hosts hosts

# master (adware/malware)
Start-BitsTransfer https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts hosts

# master + gambling
# Start-BitsTransfer https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling/hosts hosts

# master + gambling-porn-social
# Start-BitsTransfer https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/gambling-porn-social/hosts hosts