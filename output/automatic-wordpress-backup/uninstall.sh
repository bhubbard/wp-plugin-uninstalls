#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 's3b-schedule'
wp option delete 's3b-bucket'
wp option delete 's3b-section'
wp option delete 'wdc_credits'
wp option delete 'awb-settings'

# Clear Cron Jobs
wp cron event delete 's3-backup'

