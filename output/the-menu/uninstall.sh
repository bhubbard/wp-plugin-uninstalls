#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'distm_settings'
wp option delete 'distm_default_icon_url'
wp option delete 'distm_featured_icon_url'
wp option delete 'distm_plugin_version'
wp option delete 'the-menu_license_key'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_the-menu_license_status_%' OR option_name LIKE '_site_transient_the-menu_license_status_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_icon_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_icon_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_icon_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_icon_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_dashicon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_dashicon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_dashicon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_dashicon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_capabilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_filter_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_filter_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_filter_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_filter_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'distm_icon_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'distm_icon_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'distm_icon_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'distm_icon_url'"
