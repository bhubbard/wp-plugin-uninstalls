#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ddtt_test_mode'
wp option delete 'ddtt_admin_bar_add_links'
wp option delete 'ddtt_admin_bar_centering_tool'
wp option delete 'ddtt_admin_bar_gravity_form_finder'
wp option delete 'ddtt_admin_bar_debug'
wp option delete 'ddtt_admin_bar_condense'
wp option delete 'ddtt_admin_bar_wp_logo'
wp option delete 'ddtt_admin_bar_logs'
wp option delete 'ddtt_admin_bar_resources'
wp option delete 'ddtt_admin_bar_user_id'
wp option delete 'ddtt_admin_bar_page_loaded'
wp option delete 'ddtt_admin_bar_post_id'
wp option delete 'ddtt_admin_bar_shortcodes'
wp option delete 'ddtt_total_error_count'
wp option delete 'ddtt_admin_menu_items'
wp option delete 'ddtt_ql_user_id'
wp option delete 'ddtt_ql_post_id'
wp option delete 'ddtt_ql_comment_id'
wp option delete 'ddtt_ids_in_search'
wp option delete 'ddtt_page_slugs'
wp option delete 'ddtt_force_updates_check'
wp option delete 'ddtt_hide_plugin'
wp option delete 'ddtt_online_users'
wp option delete 'ddtt_online_users_roles'
wp option delete 'ddtt_online_users_priority_roles'
wp option delete 'ddtt_online_users_last_seen'
wp option delete 'ddtt_online_users_link'
wp option delete 'online_users_last_seen'
wp option delete 'ddtt_online_users_heartbeat'
wp option delete 'online_users_heartbeat_interval'
wp option delete 'ddtt_dev_access_only'
wp option delete 'ddtt_plugins_page_data'
wp option delete 'ddtt_plugins_page_size'
wp option delete 'ddtt_plugins_page_last_modified'
wp option delete 'ddtt_plugins_page_installed_by'
wp option delete 'ddtt_plugins_page_notes'
wp option delete 'ddtt_plugin_alias'
wp option delete 'ddtt_plugin_desc'
wp option delete 'ddtt_plugin_author'
wp option delete 'ddtt_plugins_page_path'
wp option delete 'ddtt_plugin_data'
wp option delete 'ddtt_plugin_installers'
wp option delete 'ddtt_plugin_notes'
wp option delete 'ddtt_plugins_page_author_update'
wp option delete 'ddtt_pass'
wp option delete 'ddtt_enable_pass'
wp option delete 'ddtt_secure_pages'
wp option delete 'ddtt_pass_lockout'
wp option delete 'ddtt_pass_attempts'
wp option delete 'ddtt_pass_exp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ddtt_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_viewer_customizations'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_modified'"
wp option delete 'ddtt_view_sensitive_info'
wp option delete 'ddtt_syntax_checker'
wp option delete 'ddtt_developers'
wp option delete 'ddtt_dev_email'
wp option delete 'ddtt_enable_curl_timeout'
wp option delete 'ddtt_change_curl_timeout'
wp option delete 'active_sitewide_plugins'
wp option delete 'ddtt_dev_timezone'
wp option delete 'ddtt_default_mode'
wp option delete 'ddtt_dev_timeformat'
wp option delete 'ddtt_last_viewed_version'
wp option delete 'ddtt_disable_error_counts'
wp option delete 'ddtt_favorite_tools'
wp option delete 'ddtt_tools'
wp option delete 'ddtt_activity'
wp option delete 'ddtt_open_nav_new_tab'
wp option delete 'ddtt_last_error'
wp option delete 'ddtt_resources'
wp option delete 'ddtt_last_selected_table'
wp option delete 'ddtt_last_defined_constant'
wp option delete 'ddtt_last_global_variable'
wp option delete 'ddtt_plugins'
wp option delete 'ddtt_activity_updating_usermeta_skip_keys'
wp option delete 'ddtt_activity_updating_postmeta_skip_keys'
wp option delete 'ddtt_activity_updating_setting_skip_keys'
wp option delete 'ddtt_debug_log_path'
wp option delete 'ddtt_error_log_path'
wp option delete 'ddtt_admin_error_log_path'
wp option delete 'ddtt_log_files'
wp option delete 'ddtt_max_log_size'
wp option delete 'ddtt_log_viewer_customizations'
wp option delete 'ddtt_metadata_last_lookups'
wp option delete 'ddtt_metadata_viewer_customizations'
wp option delete 'ddtt_last_selected_post_type'
wp option delete 'ddtt_deleted_site_options'
wp option delete 'ddtt_last_selected_taxonomy'
wp option delete 'ddtt_online_users_discord_enable'
wp option delete 'ddtt_backtrace_deprecations'
wp option delete 'ddtt_backtrace_notices'
wp option delete 'ddtt_backtrace_warnings'
wp option delete 'ddtt_backtrace_errors'
wp option delete 'ddtt_wp_mail_failure'
wp option delete 'ddtt_fatal_discord_enable'
wp option delete 'ddtt_online_users_discord_webhook'
wp option delete 'ddtt_fatal_discord_webhook'
wp option delete 'ddtt_disable_everywhere'
wp option delete 'ddtt_disable_admin'
wp option delete 'ddtt_disable_frontend'
wp option delete 'ddtt_enable_heartbeat_monitor'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ddtt_pass_%' OR option_name LIKE '_site_transient_ddtt_pass_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_file_updated' OR option_name LIKE '_site_transient_%_file_updated'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_backup_deleted' OR option_name LIKE '_site_transient_%_backup_deleted'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_backups_deleted' OR option_name LIKE '_site_transient_%_backups_deleted'"
wp transient delete 'ddtt_plugins_data'
wp transient delete 'update_core'
wp transient delete 'ddtt_settings_imported_successfully'
wp transient delete 'ddtt_settings_imported'
wp transient delete 'ddtt_log_cleared'
wp transient delete 'ddtt_metadata_reset'
wp transient delete 'ddtt_deleted_these_site_options'
wp transient delete 'ddtt_option_sources'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ddtt_centering_tool'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ddtt_centering_tool'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ddtt_centering_tool'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ddtt_centering_tool'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ddtt_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ddtt_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ddtt_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ddtt_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ddtt_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ddtt_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ddtt_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ddtt_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
