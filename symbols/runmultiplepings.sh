#!/bin/bash
# chmod +x runmultiplepings.sh
for i in {1..5}
do
    tmux new-session -d -s "ping_session_$i" "ping -c 5 1.1.1.1"
done