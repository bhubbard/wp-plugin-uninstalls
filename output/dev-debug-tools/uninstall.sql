-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ddtt_test_mode', 'ddtt_admin_bar_add_links', 'ddtt_admin_bar_centering_tool', 'ddtt_admin_bar_gravity_form_finder', 'ddtt_admin_bar_debug', 'ddtt_admin_bar_condense', 'ddtt_admin_bar_wp_logo', 'ddtt_admin_bar_logs', 'ddtt_admin_bar_resources', 'ddtt_admin_bar_user_id', 'ddtt_admin_bar_page_loaded', 'ddtt_admin_bar_post_id', 'ddtt_admin_bar_shortcodes', 'ddtt_total_error_count', 'ddtt_admin_menu_items', 'ddtt_ql_user_id', 'ddtt_ql_post_id', 'ddtt_ql_comment_id', 'ddtt_ids_in_search', 'ddtt_page_slugs', 'ddtt_force_updates_check', 'ddtt_hide_plugin', 'ddtt_online_users', 'ddtt_online_users_roles', 'ddtt_online_users_priority_roles', 'ddtt_online_users_last_seen', 'ddtt_online_users_link', 'online_users_last_seen', 'ddtt_online_users_heartbeat', 'online_users_heartbeat_interval', 'ddtt_dev_access_only', 'ddtt_plugins_page_data', 'ddtt_plugins_page_size', 'ddtt_plugins_page_last_modified', 'ddtt_plugins_page_installed_by', 'ddtt_plugins_page_notes', 'ddtt_plugin_alias', 'ddtt_plugin_desc', 'ddtt_plugin_author', 'ddtt_plugins_page_path', 'ddtt_plugin_data', 'ddtt_plugin_installers', 'ddtt_plugin_notes', 'ddtt_plugins_page_author_update', 'ddtt_pass', 'ddtt_enable_pass', 'ddtt_secure_pages', 'ddtt_pass_lockout', 'ddtt_pass_attempts', 'ddtt_pass_exp');
DELETE FROM wp_options WHERE option_name IN ('ddtt_view_sensitive_info', 'ddtt_syntax_checker', 'ddtt_developers', 'ddtt_dev_email', 'ddtt_enable_curl_timeout', 'ddtt_change_curl_timeout', 'active_sitewide_plugins', 'ddtt_dev_timezone', 'ddtt_default_mode', 'ddtt_dev_timeformat', 'ddtt_last_viewed_version', 'ddtt_disable_error_counts', 'ddtt_favorite_tools', 'ddtt_tools', 'ddtt_activity', 'ddtt_open_nav_new_tab', 'ddtt_last_error', 'ddtt_resources', 'ddtt_last_selected_table', 'ddtt_last_defined_constant', 'ddtt_last_global_variable', 'ddtt_plugins', 'ddtt_activity_updating_usermeta_skip_keys', 'ddtt_activity_updating_postmeta_skip_keys', 'ddtt_activity_updating_setting_skip_keys', 'ddtt_debug_log_path', 'ddtt_error_log_path', 'ddtt_admin_error_log_path', 'ddtt_log_files', 'ddtt_max_log_size', 'ddtt_log_viewer_customizations', 'ddtt_metadata_last_lookups', 'ddtt_metadata_viewer_customizations', 'ddtt_last_selected_post_type', 'ddtt_deleted_site_options', 'ddtt_last_selected_taxonomy', 'ddtt_online_users_discord_enable', 'ddtt_backtrace_deprecations', 'ddtt_backtrace_notices', 'ddtt_backtrace_warnings', 'ddtt_backtrace_errors', 'ddtt_wp_mail_failure', 'ddtt_fatal_discord_enable', 'ddtt_online_users_discord_webhook', 'ddtt_fatal_discord_webhook', 'ddtt_disable_everywhere', 'ddtt_disable_admin', 'ddtt_disable_frontend', 'ddtt_enable_heartbeat_monitor', 'update_plugins');
DELETE FROM wp_options WHERE option_name IN ('update_themes', 'ddtt_plugins_data', 'update_core', 'ddtt_settings_imported_successfully', 'ddtt_settings_imported', 'ddtt_log_cleared', 'ddtt_metadata_reset', 'ddtt_deleted_these_site_options', 'ddtt_option_sources');
DELETE FROM wp_options WHERE option_name LIKE 'ddtt_%';
DELETE FROM wp_options WHERE option_name LIKE '%_viewer_customizations';
DELETE FROM wp_options WHERE option_name LIKE '%_last_modified';
DELETE FROM wp_options WHERE option_name LIKE 'ddtt_pass_%';
DELETE FROM wp_options WHERE option_name LIKE '%_file_updated';
DELETE FROM wp_options WHERE option_name LIKE '%_backup_deleted';
DELETE FROM wp_options WHERE option_name LIKE '%_backups_deleted';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ddtt_centering_tool', 'ddtt_mode', 'session_tokens', '_wp_attachment_image_alt', 'first_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('ddtt_centering_tool', 'ddtt_mode', 'session_tokens', '_wp_attachment_image_alt', 'first_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('ddtt_centering_tool', 'ddtt_mode', 'session_tokens', '_wp_attachment_image_alt', 'first_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ddtt_centering_tool', 'ddtt_mode', 'session_tokens', '_wp_attachment_image_alt', 'first_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ddtt_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ddtt_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ddtt_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ddtt_%';

