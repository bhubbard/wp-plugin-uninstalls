#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'show_twitter_followers'

# Clear Cron Jobs
wp cron event delete 'stf_update_followers'

