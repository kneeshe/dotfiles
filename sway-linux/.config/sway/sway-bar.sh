#! /bin/sh

# Variaveis

cal=$(date '+%Y/%m/%d - %H:%M')

temp="$(curl -Ss 'https://wttr.in/Ribeirao_Preto?format=%t')"

vol="$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{if ($3 == "[MUTED]") print ""; else print int($2 * 100) "%"}')"

ip_ext="$(curl -4 ifconfig.me)"
 
cpu_temp="$(sensors | awk 'NR==3 { print $2 }')"

ram_usg="$(free -h | awk 'NR==2 { print $3 "/" $2 }')"

disk_usg="$(df -h / | awk 'NR==2 {print $3 "/" $2}')"

echo "$cal - $temp | $ip_ext | $disk_usg | $ram_usg | $cpu_temp | $vol"
