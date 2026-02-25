#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracking_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hook_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hook_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hook_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hook_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_custom_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hook_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hook_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hook_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hook_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_on_all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_on_all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_on_all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_on_all'"
