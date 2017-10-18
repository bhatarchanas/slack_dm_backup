# Slack backup
## Get a backup of direct messages

### Introduction:
This bot lets you download json files with direct message chats between you and another user on your team. 

### Installation:
1. Ruby v2.2.1 or greater
   To install dependencies run the command   
   `$ bundle`
2. slack-history-export should be installed from https://github.com/hisabimbola/slack-history-export 

### Options:
Usage: 
ruby slack_dm_backup.rb [-h] [-t TOKEN] [-o OUTPUT_FOLDER]

NOTE: To get a slack token, visit https://api.slack.com/custom-integrations/legacy-tokens

Arguments:
--help,      -h     Show help text.                            [boolean]
--token,     -t     Token from slack.	                       [string]
--outfolder, -o     Output folder to store all the json files. [string]