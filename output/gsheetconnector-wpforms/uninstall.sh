#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wpf_gs_debug_log_file'
wp option delete 'wpform_gs_access_code'
wp option delete 'wpform_gs_verify'
wp option delete 'wpform_GS_info'
wp option delete 'wpform_gs_token'
wp option delete 'wpform_uninstall'
wp option delete 'blog_publicize'
wp option delete 'wpform_gs_auth_expired_display_add_interval'
wp option delete 'wpform_gs_auth_expired_close_add_interval'
wp option delete 'wpform_gs_auth_expired_free'
wp option delete 'Wpformsgsc_api_creds'
wp option delete 'wpforms_manual_setting'
wp option delete 'is_new_client_secret_wpformsgsc'
wp option delete 'wpforms_gs_upgrade_notice_interval'
wp option delete 'wpforms_gs_close_upgrade_notice'
wp option delete 'wpforms_gs_sheetId'
wp option delete 'wpgs_email_account'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'wpform_gs_upgrade_redirect'
wp transient delete 'update_plugins'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpform_gs_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpform_gs_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpform_gs_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpform_gs_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpform_gs_old_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpform_gs_old_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpform_gs_old_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpform_gs_old_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpform_gs_settings_new'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpform_gs_settings_new'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpform_gs_settings_new'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpform_gs_settings_new'"
