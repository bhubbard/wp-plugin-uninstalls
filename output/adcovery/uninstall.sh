#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'adcovery_last_update_at'
wp option delete 'adcovery_last_update_method'
wp option delete 'adcovery_enabled'
wp option delete 'adcovery_last_error_msg'
wp option delete 'adcovery_website_id'
wp option delete 'adcovery_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'adcovery_%'"

# Clear Cron Jobs
wp cron event delete 'wp_adcovery_cron'

