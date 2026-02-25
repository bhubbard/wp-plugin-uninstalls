#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'manage-inactive-subsites-deactivate'
wp option delete 'manage_inactive_subsites_interval_type'
wp option delete 'manage_inactive_subsites_interval_size'
wp option delete 'manage_inactive_subsites_action'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mis_cron_query_%'"

# Clear Cron Jobs
wp cron event delete 'manage_inactive_subsites_cron_hourly'

