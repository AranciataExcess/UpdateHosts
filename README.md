# UpdateHosts




Introduction
_____________
Script for automating update of HOSTS file in Windows using DOS and Powershell to help automate downloading and updating HOSTS file for a better Internet experience. The source hosts is via Steven Black who has consolidated multiple sources to create a unified master HOSTS file for Malware/Adware protection (That project is located here - https://github.com/StevenBlack/hosts)


Contents
_____________

* "UpdateHosts.zip" Extract this to your C:\ drive as C:\UpdateHosts\  (your zip/rar program should be able to do this from right clicking the file)


Contains;

* updatehosts.bat - dos script  downloading and updating hosts in Windows 
* updatehosts.ps1 - powershell script for downloading hosts (called by batch file)

Run the updatehosts.bat as Administrator (or create a shortcut to it, in Windows desktop and set the properties to run as Administrator)

Once that's done it will create a scheduled task for updating and downloading hosts.
