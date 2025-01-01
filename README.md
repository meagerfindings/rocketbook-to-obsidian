# Rocketbook to Obsidian

A simple Ruby script to convert Rocketbook OCR/HTR scans to Obsidian notes.

## Usage

### Customize paths in the script

```ruby
ROCKETBOOK_INBOX_PATH = '/path/to/rocketbook/inbox'
OBSIDIAN_VAULT_PATH = '/path/to/obsidian/vault'
MEETINGS_FOLDER = 'meetings'
```

### Cron

Setup a cron job to run the script every 5 minutes

```bash
*/5 * * * * /usr/bin/ruby /path/to/rocketbook_to_obsidian.rb
```
### Sync 

Due to the limited options for syncing from Rocketbook, I use the following method:
1. Sync Rocketbook to Dropbox
2. Use the Dropbox app on my computer to sync the files to my local Dropbox folder
3. Have the script watch the local Dropbox folder
4. Process the files and move them into the Obsidian vault

Use any of Rocketbook's supported services to sync your scans to your computer. All that matters is that you somehow get the scans to your `ROCKETBOOK_INBOX_PATH` directory.
