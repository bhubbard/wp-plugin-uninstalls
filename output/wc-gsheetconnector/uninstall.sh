#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcgsc_options_migrated'
wp option delete 'wcfgs_debug_log_file'
wp option delete 'wcgsc_access_code'
wp option delete 'wcgsc_verify'
wp option delete 'wcgsc_token'
wp option delete 'wcgsc_feeds'
wp option delete 'wcgsc_sheetId'
wp option delete 'wcgsc_sheet_feeds'
wp option delete 'wcgsc_settings'
wp option delete 'wcgsc_order_states'
wp option delete 'wcgsc_api_free_creds'
wp option delete 'wcgsc_page_roles_setting'
wp option delete 'is_new_client_secret_wcgsc'
wp option delete 'wcgsc_tab_roles_setting'
wp option delete 'wcgsc_email_account'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'WC_GS_info'
wp option delete 'wcgsc_checkbox_settings'
wp option delete 'blog_publicize'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

