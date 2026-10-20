#! /bin/sh

# Variaveis

cal=$(date '+%Y/%m/%d - %H:%M')

vol="$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5; exit}')"

cpu_temp="$(sysctl -n dev.cpu.0.temperature)"

ram_usg="$(sysctl -n hw.pagesize vm.stats.vm.v_active_count vm.stats.vm.v_wire_count hw.physmem | awk 'NR==1{p=$1} NR==2{a=$1} NR==3{w=$1} NR==4{t=$1} END{printf "%.1f/%.0fG", (a+w)*p/2^30, t/2^30}')"

disk_usg="$(df -h / | awk 'NR==2 {print $3 "/" $2}')"


echo "$cal | $disk_usg | $ram_usg | $cpu_temp | $vol"
