# Slack backup
### Get a backup of direct messages between you and all the users in your team!

### Introduction:
This bot lets you download json files with direct message chats between you and another user on your team. Chats between you and every other user on your team will be downloaded in json format and will be stored in the output folder that you provide while running the command. 

### Installation:
1. Ruby v2.2.1 or greater
   To install dependencies run the command   
   `$ bundle`
2. slack-history-export should be installed. Refer https://github.com/hisabimbola/slack-history-export for installation details.

### Options:
Usage: ruby slack_dm_backup.rb [-h] [-t TOKEN] [-o OUTPUT_FOLDER]

NOTE: To get a slack token, visit https://api.slack.com/custom-integrations/legacy-tokens

Arguments:

--help, -h&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Show help text.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[boolean]  

--token, -t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Token from slack.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[string] 

--outfolder, -o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Output folder to store all the json files.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[string] 

### Thanks:
@hisabimbola [slack-history-export] (https://github.com/hisabimbola/slack-history-export)
@dharmastyle [slack2html.php] (https://gist.github.com/dharmastyle/5d1e8239c5684938db0b)
@humor4fun [slack-backup] (https://github.com/humor4fun/slack-backup)