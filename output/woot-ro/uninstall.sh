#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woot_settings'
wp option delete 'woot_deprecation_notice_dismissed'
wp option delete 'woot_plugin_version'

# Delete Transients
wp transient delete 'woot_services'
wp transient delete 'woot_couriers'
wp transient delete 'woot_countries'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woot_selected_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woot_selected_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woot_selected_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woot_selected_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woot_selected_location_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woot_selected_location_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woot_selected_location_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woot_selected_location_method'"
