# Brisket Alert

Small day project to send me a text alert when Franklin brisket is available on gold belly.

## Assumptions

* You are on a mac
* You have a ruby manager installed

## Installation

1. `git clone https://github.com/TravisSpangle/franklin_alert`
2. `cd franklin_alert`
3. `cp settings_example.yml settings.yml`
    * brisket_url - gold belly product you ware waiting to be sold again
    * alert_username - gmail email 
    * alert_pword - gmail password 
    * alert_number - your cell number as an [email address](https://20somethingfinance.com/how-to-send-text-messages-sms-via-email-for-free/)
4. Test run with `bin/test` - you should get a text message with the url in your settings.yml
5. You will want to automate this. Adjust your crontab's frequency. With RBENV I used:
    * `0/10/20/30/40/50 * * * * export PATH=/opt/rbenv/shims:/opt/rbenv/bin:/usr/bin:$PATH; eval "$(rbenv init -)"; cd ~/Desktop/franklin_alert && bundle exec ruby app.rb`

## Cron Errors

With crontab and the newer mac OS's you'll need to adjust some security preferences. Use this stack overflow for the explanation - https://apple.stackexchange.com/a/378558.

For me, I had to wait for the error message. When cron failed I did `which cron`, found it's location and dragged and dropped the file in the the Full Disk Access permissions. 
