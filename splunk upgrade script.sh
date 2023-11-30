#!/bin/bash

# Step 1: Create a backup directory
mkdir /home/splunkbackup
if [ $? -ne 0 ]; then
    echo "Error: Unable to create the backup directory."
    exit 1
fi

# Step 2: Copy the Splunk configuration
cp -r /opt/splunk/etc/ /home/splunkbackup/
if [ $? -ne 0 ]; then
    echo "Error: Unable to copy Splunk configuration."
    exit 1
fi

# Step 3: Stop Splunk
/opt/splunk/bin/splunk stop
if [ $? -ne 0 ]; then
    echo "Error: Unable to stop Splunk."
    exit 1
fi

# Step 4: Extract Splunk archive
tar xvfz /home/splunk-9.1.2-b6b9c8185839-Linux-x86_64.tgz -C /opt/
if [ $? -ne 0 ]; then
    echo "Error: Unable to extract Splunk archive."
    exit 1
fi

# Step 5: Start Splunk with automatic answers to prompts
/opt/splunk/bin/splunk start --accept-license --answer-yes
if [ $? -ne 0 ]; then
    echo "Error: Unable to start Splunk."
    exit 1
fi

echo "Script executed successfully."