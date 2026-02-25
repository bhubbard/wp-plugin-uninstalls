#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arplay_app_url'
wp option delete 'arplay_api_url'
wp option delete 'arplay_woocommerce'
wp option delete 'arplay_plugin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_arplay_exist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_arplay_exist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_arplay_exist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_arplay_exist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_arplay_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_arplay_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_arplay_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_arplay_path'"
