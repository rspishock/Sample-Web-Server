#! /bin/bash
wget -O splunk-8.1.1-08187535c166-Linux-x86_64.tgz 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=8.1.1&product=splunk&filename=splunk-8.1.1-08187535c166-Linux-x86_64.tgz&wget=true'

# Copy Splunk to /opt/
cp splunk-8.1.1-08187535c166-Linux-x86_64.tgz /opt/

cd /opt/
tar xvzf splunk-8.1.1-08187535c166-Linux-x86_64.tgz

# Run Splunk
cd /opt/splunk/bin
./splunk start --accept-license