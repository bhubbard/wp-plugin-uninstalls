#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'is_new_client_secret_cf7gscfree'
wp option delete 'gs_token'
wp option delete 'gs_verify'
wp option delete 'cf7gs_auth_expired_free'
wp option delete 'gs_debug_log_file'
wp option delete 'google_sheet_info_free'
wp option delete 'gs_access_code'
wp option delete 'gs_display_add_interval'
wp option delete 'gs_close_add_interval'
wp option delete 'gs_auth_expired_display_add_interval'
wp option delete 'gs_auth_expired_close_add_interval'
wp option delete 'blog_publicize'
wp option delete 'gs_upgrade_notice_interval'
wp option delete 'gs_close_upgrade_notice'
wp option delete 'cf7gsc_free_api_creds'
wp option delete 'cf7gf_email_account'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'cf7gs_upgrade_redirect'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_map_mail_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_map_mail_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_map_mail_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_map_mail_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gs_map_custom_mail_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gs_map_custom_mail_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gs_map_custom_mail_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gs_map_custom_mail_tags'"
