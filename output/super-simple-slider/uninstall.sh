#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_viewed'"
wp option delete 'otb_new_theme'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'sss_delete_all_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'super-simple-slider-slide-settings-group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'super-simple-slider-slide-settings-group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'super-simple-slider-slide-settings-group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'super-simple-slider-slide-settings-group'"
