#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gs_formntr_info'
wp option delete 'gs_formntr_access_code'
wp option delete 'gs_formntr_verify'
wp option delete 'gs_formntr_token'
wp option delete 'gs_formntr_feeds'
wp option delete 'gs_formntr_sheetId'
wp option delete 'gs_formntr_settings'
wp option delete 'gs_formntr_checkbox_settings'
wp option delete 'gs_formntr_tab_roles_setting'
wp option delete 'blog_publicize'
wp option delete 'active_sitewide_plugins'
wp option delete 'formntr_gs_auth_expired_display_add_interval'
wp option delete 'formntr_gs_auth_expired_close_add_interval'
wp option delete 'formntr_gs_auth_expired_free'
wp option delete 'gs_formntr_manual_setting'
wp option delete 'frmgs_debug_log'
wp option delete 'gs_formntr_sheet_feeds'
wp option delete 'forminatorgsc_api_creds'
wp option delete 'is_new_client_secret_FORMINGSC'
wp option delete 'gs_frmin_token_manual'
wp option delete 'gs_frmin_client_id'
wp option delete 'gs_frmin_secret_id'
wp option delete 'gfgs_sheetId'
wp option delete 'gfgs_feeds'
wp option delete 'frmingf_email_account'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'google_sheet_check_expiration'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'forminator_forms_feed_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'forminator_forms_feed_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'forminator_forms_feed_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'forminator_forms_feed_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'forminator-google-sheet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'forminator-google-sheet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'forminator-google-sheet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'forminator-google-sheet'"
