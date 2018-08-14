#!/bin/bash
set +ex

DATE_FORMAT="%Y-%m-%d-%H:%M:%S.%3N%z"
echo "[$(date +$DATE_FORMAT)] Started container version $(cat ./VERSION)... checking things out..."

ffmpeg -buildconf
node -v
npm -v

# job simulation parameters (defaults)
MAX_TASKS=${MAX_TASKS:-3}
MIN_TASK_WAIT=${MIN_TASK_WAIT:-10}
MAX_TASK_WAIT=${MAX_TASK_WAIT:-30}

# simulate job running
MAX_RANDOM_DURATION=$(($MAX_TASK_WAIT - $MIN_TASK_WAIT))
TASKS_TO_RUN=$((1+RANDOM % $MAX_TASKS))
TOTAL_WAIT=0
echo "[$(date +$DATE_FORMAT)] Finished checking things out."
echo ""
echo "[$(date +$DATE_FORMAT)] Simulating running process (${TASKS_TO_RUN} tasks of ${MIN_TASK_WAIT} - ${MAX_TASK_WAIT} sec each)."
for x in 0 1 2 3; do
  if [ $x -lt $TASKS_TO_RUN ]; then
    WAIT_DURATION=$(($MIN_TASK_WAIT + RANDOM % $MAX_RANDOM_DURATION))
    echo "[$(date +$DATE_FORMAT)] Executing task $(($x + 1))... "
    sleep ${WAIT_DURATION}s
    echo "[$(date +$DATE_FORMAT)] Task $(($x + 1)) completed in ${WAIT_DURATION} seconds."
    TOTAL_WAIT=$(($TOTAL_WAIT + $WAIT_DURATION))
  fi
done
echo ""
echo "[$(date +$DATE_FORMAT)] Job completed in ${TOTAL_WAIT} seconds."

# while testing... don't die.
# echo "[$(date +$DATE_FORMAT)] Entering infinite loop until you kill this process manually."
# while true
# do
#     tail -f /dev/null & wait ${!}
# done
