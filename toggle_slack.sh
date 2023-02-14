#!/bin/bash

if [[ $(wmctrl -l |grep Slack |wc -l) -ne 0 ]]; then
    wmctrl -c Slack
else
    slack
fi

