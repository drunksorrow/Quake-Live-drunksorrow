#! /bin/bash
# quakestartsingle.sh modified - quake live single server spawning script.
# TEST
# TEST

export qPathToStartScript="~/steamcmd/steamapps/common/qlds/run_server_x64.sh"

echo "========== QuakeStart.sh has started. =========="
echo "========= $(date) ========="
cd ~/steamcmd/steamapps/common/qlds/baseq3

exec $qPathToStartScript #\
    +set zmq_rcon_enable 1 \
    +set zmq_rcon_password "password" \
    +set zmq_stats_enable 1 \
    +set zmq_stats_password "password" \
