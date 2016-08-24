#!/bin/bash
# Docker doesn't have a great way to set runtime environment variables,
# so use this script to prepare the execution environment for later processes.
# The below creates an environment variable you can use in your app to make use of docker linked containers
# you can just as easily point this somewhere else like mongo labs for example
export MONGO_URI="mongodb://${MONGO_PORT_27017_TCP_ADDR}:${MONGODB_PORT_27017_TCP_PORT}/MYDBNAME"
# Execute the commands passed to this script
# e.g. "./env.sh venv/bin/nosetests --with-xunit
#exec "$@" - use if you want to pass in command line arguments you want to execute
#node app.js - use if you just want to use directly
grunt serve
