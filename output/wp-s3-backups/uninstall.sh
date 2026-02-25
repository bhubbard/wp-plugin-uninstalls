#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 's3b-schedule'
wp option delete 's3b-access-key'
wp option delete 's3b-secret-key'
wp option delete 's3b-bucket'
wp option delete 's3b-section'

# Clear Cron Jobs
wp cron event delete 's3-backup'

