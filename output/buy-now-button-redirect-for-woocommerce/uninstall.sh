#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buynobur_global_redirect_type'
wp option delete 'buynobur_global_custom_url'
wp option delete 'buynobur_global_enabled'
wp option delete 'buynobur_target_taxonomies'
wp option delete 'buynobur_target_shop_archives'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_buynobur_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_buynobur_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_buynobur_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_buynobur_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_buynobur_redirect_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_buynobur_redirect_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_buynobur_redirect_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_buynobur_redirect_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_buynobur_custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_buynobur_custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_buynobur_custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_buynobur_custom_url'"
