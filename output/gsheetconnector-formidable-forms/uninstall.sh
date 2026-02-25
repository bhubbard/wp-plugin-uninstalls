#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gs_formidable_page_roles_setting'
wp option delete 'frmgsc_debug_log_file'
wp option delete 'gscfrmdform_manual_setting'
wp option delete 'frmgsc_gs_token'
wp option delete 'frmgsc_gs_access_code'
wp option delete 'gscfrmdform_verify'
wp option delete 'gscfrmdform_client_id'
wp option delete 'gscfrmdform_secret_id'
wp option delete 'gscfrmdform_access_manual_code'
wp option delete 'gscfrmdform_token_manual'
wp option delete 'gscfrmdform_info'
wp option delete 'blog_publicize'
wp option delete 'active_sitewide_plugins'
wp option delete 'formidable_form_gs_auth_expired_display_add_interval'
wp option delete 'formidable_form_gs_auth_expired_close_add_interval'
wp option delete 'formidable_form_gs_auth_expired_free'
wp option delete 'formidablegsc_api_creds'
wp option delete 'is_new_client_secret_frmgsc'
wp option delete 'gscfrmd_email_account'
wp option delete 'frmgsc_email_account_manual'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'gs_formidable_success_message'
wp transient delete 'update_plugins'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gscfrm_form_feeds'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gscfrm_form_feeds'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gscfrm_form_feeds'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gscfrm_form_feeds'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gscfrm_form_feeds_sheet_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gscfrm_form_feeds_sheet_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gscfrm_form_feeds_sheet_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gscfrm_form_feeds_sheet_settings'"
