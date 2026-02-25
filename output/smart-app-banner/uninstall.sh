#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsl_global_banner'
wp option delete 'wsl_homepage_appid'
wp option delete 'wsl_homepage_appid_ipad'
wp option delete 'wsl_homepage_affiliate'
wp option delete 'wsl_homepage_argument'
wp option delete 'wsl_app_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsl-app-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsl-app-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsl-app-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsl-app-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsl-app-id-ipad'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsl-app-id-ipad'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsl-app-id-ipad'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsl-app-id-ipad'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsl-affiliate-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsl-affiliate-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsl-affiliate-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsl-affiliate-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsl-app-argument'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsl-app-argument'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsl-app-argument'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsl-app-argument'"
