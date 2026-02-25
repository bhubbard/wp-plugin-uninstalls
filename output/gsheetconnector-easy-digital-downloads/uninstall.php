<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('gs_edd_info');
delete_site_option('gs_edd_info');
delete_option('gs_edd_access_code');
delete_site_option('gs_edd_access_code');
delete_option('gs_edd_verify');
delete_site_option('gs_edd_verify');
delete_option('gs_edd_token');
delete_site_option('gs_edd_token');
delete_option('gs_edd_feeds');
delete_site_option('gs_edd_feeds');
delete_option('gs_edd_sheetId');
delete_site_option('gs_edd_sheetId');
delete_option('gs_edd_settings');
delete_site_option('gs_edd_settings');
delete_option('gs_edd_checkbox_settings');
delete_site_option('gs_edd_checkbox_settings');
delete_option('gs_edd_tab_roles_setting');
delete_site_option('gs_edd_tab_roles_setting');
delete_option('gs_edd_license_key');
delete_site_option('gs_edd_license_key');
delete_option('gs_license_status');
delete_site_option('gs_license_status');
delete_option('gs_license_key');
delete_site_option('gs_license_key');
delete_option('gs_edd_token_manual');
delete_site_option('gs_edd_token_manual');
delete_option('blog_publicize');
delete_site_option('blog_publicize');
delete_option('gs_edd_sheet_feeds');
delete_site_option('gs_edd_sheet_feeds');
delete_option('edd_gs_debug_log_file');
delete_site_option('edd_gs_debug_log_file');
delete_option('gs_edd_manual_setting');
delete_site_option('gs_edd_manual_setting');
delete_option('gs_edd_access_manual_code');
delete_site_option('gs_edd_access_manual_code');
delete_option('gs_edd_client_id');
delete_site_option('gs_edd_client_id');
delete_option('gs_edd_secret_id');
delete_site_option('gs_edd_secret_id');
delete_option('gscwc_order_states');
delete_site_option('gscwc_order_states');
delete_option('gs_edd_page_roles_setting');
delete_site_option('gs_edd_page_roles_setting');
delete_option('is_new_client_secret_eddgsc');
delete_site_option('is_new_client_secret_eddgsc');
delete_option('wpgs_email_account_edd');
delete_site_option('wpgs_email_account_edd');
delete_option('wpgs_email_account_edd_manual');
delete_site_option('wpgs_email_account_edd_manual');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');
wp_clear_scheduled_hook('google_sheet_check_expiration');

