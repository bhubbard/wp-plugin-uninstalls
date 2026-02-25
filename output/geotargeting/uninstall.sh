#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geot_settings'
wp option delete 'geot_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'geot_%'"
wp option delete 'geot_plugin_updated'
wp option delete 'geot_rate_plugin'
wp option delete 'geot_pro_settings'
wp option delete 'geot_pro_addons'
wp option delete 'geot_flush'

# Clear Cron Jobs
wp cron event delete 'geot_maxmind_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geot_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geot_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geot_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geot_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geot_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geot_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geot_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geot_countries'"
