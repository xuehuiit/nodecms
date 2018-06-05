#!/bin/bash

# install supervisor before run this script:

# npm install supervisor -g

export NODE_ENV=production
supervisor -i static,script,test,views,node_modules start.js
