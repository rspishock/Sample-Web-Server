#!/bin/bash

# Copy Splunk to /opt/
cp splunk-8.1.1-08187535c166-Linux-x86_64.tgz /opt/

cd /opt/
tar xvzf splunk-8.1.1-08187535c166-Linux-x86_64.tgz

# Run Splunk
cd /opt/splunk/bin
./splunk start