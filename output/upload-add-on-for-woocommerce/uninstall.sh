#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_ua_options'
wp option delete 'wau_addon_settings'
wp option delete 'wua_addon_settings'
wp option delete 'woo_ua_my_plugin_notice_shown'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_ua_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_ua_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_ua_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_ua_field'"
