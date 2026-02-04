#!/bin/bash
START_TIME=$(date +%s)
echo "script executed at: $TIMESTAMP"

sleep 10
END_TIME=$(date)
TOTAL_TIME=$(($END_TIME -$START_TIME))
echo "script executed at: $TOTAL_TIME "
