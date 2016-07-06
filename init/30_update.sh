#!/bin/bash

[[ ! -d /app/photo-mover/.git ]] && git clone https://github.com/vlefevre86/photo-mover.git /app/photo-mover

cd /app/photo-mover
git pull
