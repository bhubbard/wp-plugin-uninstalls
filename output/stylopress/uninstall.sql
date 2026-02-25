-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spss_installer_admin_id', 'spss_hide_plugin_for_other_admins', 'spss_developer_name', 'spss_developer_email_address', 'spss_developer_phone_number', 'spss_developer_site_address', 'spss_admin_notice_message', 'spss_admin_to_users_notice_message', 'spss_hidden_dashboard_items', 'spss_admin_menu_font_weight', 'spss_profile_image', 'spss_logo_image', 'spss_toggle_wp_menu_top_bar', 'spss_footer_content', 'spss_footer_version_toggle', 'spss_footer_toggle', 'spss_previous_font_family', 'spss_reset_lp_customizer', 'spss_remove_settings_uninstall', 'spss_scheme_creator_options', 'spss_custom_color_scheme_options', 'spss_custom_color_scheme_dashboard_option', 'spss_color_scheme_options', 'spss_selected_color_scheme', 'spss_selected_scheme_icons_color', 'spss_site_database_size', 'spss_todo_list_tasks', 'spss_display_screen_options', 'spss_custom_html_or_text_content', 'spss_google_font_family', 'spss_google_font_weight', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'update_core', 'update_plugins', 'update_themes', 'fs_snooze_period', '_fs_api_connection_retry_counter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('spss_profile_image', 'avatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('spss_profile_image', 'avatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('spss_profile_image', 'avatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('spss_profile_image', 'avatar');

