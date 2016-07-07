#!/bin/bash

[[ ! -d /app/photo-mover/.git ]] && git clone https://github.com/vlefevre86/photo-mover.git /app/photo-mover 2> /tasks/log.txt

cd /app/photo-mover
git pull 2> /tasks/log.txt
npm install 2> /tasks/log.txt
