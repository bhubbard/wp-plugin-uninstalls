#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'me_settings'
wp option delete 'eg_setting_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ca_ma_selected_components'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ca_ma_selected_components'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ca_ma_selected_components'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ca_ma_selected_components'"
