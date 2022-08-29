#!/bin/bash
ufw default deny incoming  # disable all incoming ports
ufw default allow outgoing # enable all outgoing ports
ufw allow 80/tcp           # enable http
ufw allow 443/tcp          # enable https
