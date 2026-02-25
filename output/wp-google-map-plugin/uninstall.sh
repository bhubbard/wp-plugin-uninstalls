#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpgmp_settings'
wp option delete 'wpgmp_location_extrafields'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fc_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_latest_version'"
wp option delete 'weplugins_notification'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-fc-styles'"
wp option delete 'wpgmp_integrations_data'
wp option delete 'wpgmp_current_csv'
wp option delete 'op_activated'
wp option delete 'wpgmp_language'
wp option delete 'wpgmp_api_key'
wp option delete 'wpgmp_scripts_place'
wp option delete 'wpgmp_allow_meta'
wp option delete 'wpgmp_scripts_minify'
wp option delete 'wpgmp_version'

# Clear Cron Jobs
wp cron event delete 'wpmapspro_check_notification'

