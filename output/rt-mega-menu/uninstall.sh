#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_active_kit'
wp option delete 'rtmega_menu_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rtmega_menu_settings_%'"
wp option delete 'rtmega_license_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtmega_menu_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtmega_menu_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtmega_menu_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtmega_menu_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'elementor_library_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'elementor_library_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'elementor_library_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'elementor_library_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rtmega_notice_ignore_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rtmega_notice_ignore_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rtmega_notice_ignore_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rtmega_notice_ignore_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtmega_notice_ignore_rtmega_pro_plugin_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtmega_notice_ignore_rtmega_pro_plugin_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtmega_notice_ignore_rtmega_pro_plugin_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtmega_notice_ignore_rtmega_pro_plugin_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
