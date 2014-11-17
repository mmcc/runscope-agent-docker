#!/bin/bash

if [[ $TOKEN ]]; then
	sed -i -e "s/token=.*/token=${TOKEN}/" /etc/runscope-radar/radar.conf
else
	echo "TOKEN environment variable required"
	exit 1
fi

if [[ $AGENT_ID ]]; then
  sed -i -e "s/agent-id=.*/agent-id=${AGENT_ID}/" /etc/runscope-radar/radar.conf
else
  echo "AGENT_ID environment variable required"
  exit 1
fi

if [[ $TEAM_ID ]]; then
  sed -i -e "s/team-id=.*/team-id=${TEAM_ID}/" /etc/runscope-radar/radar.conf
else
  echo "TEAM_ID environment variable required"
  exit 1
fi

if [[ $NAME ]]; then
  sed -i -e "s/name=.*/name=${NAME}/" /etc/runscope-radar/radar.conf
else
  echo "NAME environment variable required"
  exit 1
fi

if [[ $TOKEN ]]; then
  sed -i -e "s/token=.*/token=${TOKEN}/" /etc/runscope-radar/radar.conf
else
  echo "NAME environment variable required"
  exit 1
fi

exec /usr/local/bin/runscope-radar -f /etc/runscope-radar/radar.conf
