#!/bin/bash
set -x

for i in {66..77}; do
    echo "Pinging $i"
    echo "Starting ping session for $i"
    tmux new-session -d -s "ping_session_$i" "ping -c 5 1.1.1.1"
done

# prompts:
# 1. **Using `set -x`**: Add `set -x` at the beginning of your script to enable a trace of commands.
# 2. **Echo Statements**: Insert `echo` statements to print variable values and track script execution.
# 3. **VS Code Extensions**: Use extensions like "Bash Debug" to add debugging capabilities.