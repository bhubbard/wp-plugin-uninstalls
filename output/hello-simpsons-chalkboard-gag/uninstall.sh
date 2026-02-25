#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpsons-gags'
wp option delete 'simpsons-first-run'
wp option delete 'simpsons-error'

# Clear Cron Jobs
wp cron event delete 'simpsons-gag-update'

