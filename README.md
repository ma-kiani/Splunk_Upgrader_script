# Splunk_Upgrader_script
this simple bash script write for upgrading splunk to new version

for upgrading splunk by this simple script
1-first of all you need to swich user to user that owner of splunk and you start splunk first time by that
2-then Ensure you have Splunk installation archive (splunk-9.1.2-b6b9c8185839-Linux-x86_64.tgz) in your /home directory if you what change the version or archive path you can change in step 4 of script and put your own splunk file path instead of /home/splunk-9.1.2-b6b9c8185839-Linux-x86_64.tgz
3-Set Execution Permissions on your script by following command
chmod +x splunk upgrade script.sh
4-run the scrip
./splunk upgrade script.sh
