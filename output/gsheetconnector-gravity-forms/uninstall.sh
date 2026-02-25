#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gfgs_feeds'
wp option delete 'gfgs_token'
wp option delete 'gfgs_verify'
wp option delete 'active_sitewide_plugins'
wp option delete 'gravityforms_gs_page_roles_setting'
wp option delete 'gfgs_info'
wp option delete 'gfgs_access_code'
wp option delete 'gravityforms_gs_tab_roles_setting'
wp option delete 'blog_publicize'
wp option delete 'gfgs_sheetId'
wp option delete 'gf_gs_debug_log_file'
wp option delete 'gravityforms_gs_auth_expired_display_add_interval'
wp option delete 'gravityforms_gs_auth_expired_close_add_interval'
wp option delete 'gravityforms_gs_auth_expired_free'
wp option delete 'Gfgsc_api_creds'
wp option delete 'gravityforms_gs_uninstall_plugin_settings'
wp option delete 'gravityforms_manual_setting'
wp option delete 'is_new_client_secret_gravityformsgsc'
wp option delete 'gfgs_email_account'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gfgs_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gfgs_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gfgs_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gfgs_settings'"
