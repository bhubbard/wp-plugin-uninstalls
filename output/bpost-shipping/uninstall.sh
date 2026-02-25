#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ET_CORE_VERSION'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Clear Cron Jobs
wp cron event delete 'cache_clean'

