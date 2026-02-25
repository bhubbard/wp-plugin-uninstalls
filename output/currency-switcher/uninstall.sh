#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcs_sd_%'"
wp option delete 'wpcs_sd'
wp option delete 'wpcs_sd_max'
wp option delete 'wpcs_settings'
wp option delete 'wpcs_first_activation'
wp option delete 'wpcs_geo_rules'
wp option delete 'wpcs'
wp option delete 'wpcs_manage_rate_alert'
wp option delete 'wpcs_show_money_signs'

# Clear Cron Jobs
wp cron event delete 'wpcs_currencies_rate_auto_update'

