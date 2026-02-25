#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'quick_browscap_options'
wp option delete 'quick_browscap_db_version'

# Clear Cron Jobs

