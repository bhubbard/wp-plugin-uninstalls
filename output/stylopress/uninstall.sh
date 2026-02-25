#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spss_installer_admin_id'
wp option delete 'spss_hide_plugin_for_other_admins'
wp option delete 'spss_developer_name'
wp option delete 'spss_developer_email_address'
wp option delete 'spss_developer_phone_number'
wp option delete 'spss_developer_site_address'
wp option delete 'spss_admin_notice_message'
wp option delete 'spss_admin_to_users_notice_message'
wp option delete 'spss_hidden_dashboard_items'
wp option delete 'spss_admin_menu_font_weight'
wp option delete 'spss_profile_image'
wp option delete 'spss_logo_image'
wp option delete 'spss_toggle_wp_menu_top_bar'
wp option delete 'spss_footer_content'
wp option delete 'spss_footer_version_toggle'
wp option delete 'spss_footer_toggle'
wp option delete 'spss_previous_font_family'
wp option delete 'spss_reset_lp_customizer'
wp option delete 'spss_remove_settings_uninstall'
wp option delete 'spss_scheme_creator_options'
wp option delete 'spss_custom_color_scheme_options'
wp option delete 'spss_custom_color_scheme_dashboard_option'
wp option delete 'spss_color_scheme_options'
wp option delete 'spss_selected_color_scheme'
wp option delete 'spss_selected_scheme_icons_color'
wp option delete 'spss_site_database_size'
wp option delete 'spss_todo_list_tasks'
wp option delete 'spss_display_screen_options'
wp option delete 'spss_custom_html_or_text_content'
wp option delete 'spss_google_font_family'
wp option delete 'spss_google_font_weight'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spss_profile_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spss_profile_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spss_profile_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spss_profile_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avatar'"
