#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'gs_edd_info'
wp option delete 'gs_edd_access_code'
wp option delete 'gs_edd_verify'
wp option delete 'gs_edd_token'
wp option delete 'gs_edd_feeds'
wp option delete 'gs_edd_sheetId'
wp option delete 'gs_edd_settings'
wp option delete 'gs_edd_checkbox_settings'
wp option delete 'gs_edd_tab_roles_setting'
wp option delete 'gs_edd_license_key'
wp option delete 'gs_license_status'
wp option delete 'gs_license_key'
wp option delete 'gs_edd_token_manual'
wp option delete 'blog_publicize'
wp option delete 'gs_edd_sheet_feeds'
wp option delete 'edd_gs_debug_log_file'
wp option delete 'gs_edd_manual_setting'
wp option delete 'gs_edd_access_manual_code'
wp option delete 'gs_edd_client_id'
wp option delete 'gs_edd_secret_id'
wp option delete 'gscwc_order_states'
wp option delete 'gs_edd_page_roles_setting'
wp option delete 'is_new_client_secret_eddgsc'
wp option delete 'wpgs_email_account_edd'
wp option delete 'wpgs_email_account_edd_manual'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'google_sheet_check_expiration'

