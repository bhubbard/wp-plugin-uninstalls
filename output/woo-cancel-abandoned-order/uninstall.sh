#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woo_cao_version'

# Clear Cron Jobs
wp cron event delete 'woo_cao_cron'

