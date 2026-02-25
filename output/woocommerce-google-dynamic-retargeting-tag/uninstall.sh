#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wgdr_plugin_options_1'
wp option delete 'wgdr_plugin_options_2'
wp option delete 'wgdr_plugin_options_3'
wp option delete 'wgdr_hide_deprecation_info'
wp option delete 'wgdr_plugin_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wgdr_admin_notice_user_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wgdr_admin_notice_user_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wgdr_admin_notice_user_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wgdr_admin_notice_user_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_WGDR_conversion_pixel_fired'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_WGDR_conversion_pixel_fired'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_WGDR_conversion_pixel_fired'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_WGDR_conversion_pixel_fired'"
