#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'evfc_verified_%'"
wp option delete 'evfc_pending_comments'

# Clear Cron Jobs
wp cron event delete 'evfc_cleanup_event'

