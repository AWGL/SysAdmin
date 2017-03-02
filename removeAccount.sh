username=""

#lock accout
#passwd -l "$username"

#kill any running processes which belong to an account that you are deleting
pgrep -u "$username"
ps -fp $(pgrep -u "$username")
killall -KILL -u "$username"

#delete user account 
userdel -r "$username"

#Delete at jobs
find /var/spool/at/ -name "[^.]*" -type f -user "$username" -delete

#To remove cron jobs
crontab -r -u "$username"

#remove print jobs
lprm "$username"


