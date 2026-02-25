#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'wp_riotd_execution_before_image_processing'
wp option delete 'wp_riotd_settings'

# Clear Cron Jobs

