# Learning PowerShell
# https://www.linkedin.com/learning/learning-powershell/welcome-2?autoplay=true&dApp=5627896&resume=false&u=2130098

# 1. PowerShell Overview

#get-service
#get-help about-service
#about-aliases
#get-help get-childitem
#get-childitem
#ls
#dir
#get-help Set-Alias
#get-help Set-Variable
#get-command
#get-service | get-member
#Get-Alias
#get-service | where-object {$_.status -eq "stopped"}

# 2. Using PowerShell
# 2.1 Functions


# function add
# {
#     $add =[int](2+2)
#     write-output "$add"
# }

# add

# 2.2 Relieving Anxiety with -WhatIf and -Confirm

# Get-Service |Stop-Service-confirm

# 2.3 ISE and You

# Windows PowerShell ISE GUI Console Windows server 2012 R2

# ise

# get-service -name audiosrv
# command -parameter local_services

# in command prompt - dir

Get-Service -

# 2.4 Working with Output

# ise

# pipe formating
# get-service |format-list
# get-service |format-table
# get-service |sort-object

# pipe output
# get-service |out-file
# get-service |export-csv

# 2.5 Grid View

# pipe formating
# get-service |out-gridview
# get-service |format-table displayname, status, requirement

# 2.6 Running PowerShell Remotely

# Get-Service

# Get-Service -ComputerName webserver 

# Get-Service -ComputerName webserver |select-object * |out-gridview

#Get-Service -ComputerName dcdsc, webserver | format-table MachineName, name, status

# Get-Service -ComputerName dcdsc, webserver | sort-object -property MachineName| format-table MachineName, name, status

# Get-Service | Select-Object displayName, status | Out-GridView

# Get-Service | Out-GridView

# Get-Service | Select-Object * | Out-GridView

# XXXX Get-Service | Format-Table displayName, status | Out-GridView
# This option will generate an error because you are asking PowerShell to display the results in two different formats.

# Chapter Quiz

# get-service | format-list * | Sort-Object -Property status

# get-service | format-table *

# get-service | format-list *
# You need to display all the services' properties in a key-value pair format separated by a colon. Which command would you use?
# You need to use the format-list command to display the properties as indicated. The * will display all the properties.

# get-service | format-list displayname, status

# 3.1 Finding and Installing Modules

# get-command

# get-module -listavailable

# import-module -name AppLocker

# get-command -Module applocker

# get-executionpolicy
# remotesigned

# 3.2 Server cmdlets

# backup policy

# get-windowsfeature

# get-windowsfeature -Name web-server

# get-windowsfeature -Name web-server | Install-windowsfeatures

# get-windowsfeature -Name windows-server-backup | install

# $policy = new-wbpolicy

# $filespec = new-wbfilespec -filespec c:\important

# add-wbfilespec -policy $policy -filespec $filespec

# $backuplocation = new-wbbackuptarget -volumepath E:

# add-wbbackuptarget -policy $policy -target $backuplocal

# set-wbschedule -policy $policy 09:00

# set-wbpolicy -policy $policy

# $bupolicy = get-wbpolicy

# start-wbbackup -policy $bupolicy

# Get-Service "net*" | Where-Object {$_.status -eq "running"}

# get-service | Get-Member

# get-windowsfeature web-server | Out-GridView

# get-service | Sort-Object

# get-command -module msonline#

# get-service "net*" | sort-object status

# get-service | export-file c:\

# Learning PowerShell for Windows Server Administration

# 1. Getting Started

# 1.1 What's new in PowerShell

# docker images

# $ screenfetch

# winget search Microsoft.PowerShell

# 1.2 - Upgrading Windows PowerShell

# $PSVersionTable

# 1.3 - Installing PowerShell Core

# Invoke-WebRequest -Uri https://github.com/PowerShell/PowerShell/releases/download/v7.3.3/PowerShell-7.3.3-win-x64.msi -OutFile .\PSCore.msi

# [net.servicepointmanager]::securityprotocol = "tls12, tls11, tls"

# .\PSCore.msi

# 1.4 Customizing a PowerShell Session

# 1.5 OiwerShell cmdlet syntax

# $PSVersionTable.PSVersion

# Invoke-WebRequest -Uri -OutFile .\

# Update-Help

# $PSVersionTable.PSVersion

# 1.6 Help in PowerShell

# Get-Help

# Get-Help invoke

Get-Help Invoke-WebRequest -Examples

Get-Help Invoke-WebRequest -detailed

Get-Help Invoke-WebRequest -full

Get-Help Invoke-WebRequest -online

# PowerShell: Functions for Advanced Automation
# Advance your PowerShell functions

# 1. Advanced Functions in PowerShell

