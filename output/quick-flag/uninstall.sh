#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'quick_flag_db_version'
wp option delete 'quick_flag_options'

# Clear Cron Jobs

