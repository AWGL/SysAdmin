#To open port 80 (the 'www' service) for the public network of frontend, execute:
rocks remove firewall host=localhost rulename=A40-WWW-PUBLIC-LAN

rocks add firewall host=localhost network=public protocol=tcp service=www chain=INPUT \
   action=ACCEPT flags="-m state --state NEW --source 0.0.0.0/0.0.0.0" \
   rulename=A40-WWW-PUBLIC-NEW

rocks sync host firewall localhost

#edit httpd
    #AllowOverride NONE #from
    AllowOverride All #to
