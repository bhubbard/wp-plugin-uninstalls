#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yektanet_app_id'
wp option delete 'YEKTANET_ECOMMERCE_PLUGIN_VERSION'
wp option delete 'active_yektanet_plugin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yektanet_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yektanet_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yektanet_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yektanet_view_count'"
