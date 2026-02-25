#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpatt_enable_metabox_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpatt_enable_display_%'"
wp option delete 'wpatt_option_localization'
wp option delete 'wpatt_option_date_localization'
wp option delete 'wpatt_show_orderby'
wp option delete 'wpatt_option_showdate'
wp option delete 'wpatt_option_includeimages'
wp option delete 'wpatt_option_targetblank'
wp option delete 'wpatt_option_restrictload'
wp option delete 'wpatt_counter'
wp option delete 'wpatt_excludelogged_counter'
wp option delete 'wpa_ict'
wp option delete 'wpa_template'
wp option delete 'wpa_template_custom'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpa_off'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpa_off'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpa_off'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpa_off'"
