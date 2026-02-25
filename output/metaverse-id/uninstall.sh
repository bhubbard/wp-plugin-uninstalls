#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mv-id::EVE'
wp option delete 'mv-id::use::HTTP API'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mv-id::%'"

# Clear Cron Jobs
wp cron event delete 'mv_id_plugin__regenerate_cache'

