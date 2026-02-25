#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shsb_settings'
wp option delete 'shsb_score_time'
wp option delete 'shsb_score'

# Clear Cron Jobs
wp cron event delete 'shsb_cron'

