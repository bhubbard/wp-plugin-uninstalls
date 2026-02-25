<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcgsc_options_migrated');
delete_site_option('wcgsc_options_migrated');
delete_option('wcfgs_debug_log_file');
delete_site_option('wcfgs_debug_log_file');
delete_option('wcgsc_access_code');
delete_site_option('wcgsc_access_code');
delete_option('wcgsc_verify');
delete_site_option('wcgsc_verify');
delete_option('wcgsc_token');
delete_site_option('wcgsc_token');
delete_option('wcgsc_feeds');
delete_site_option('wcgsc_feeds');
delete_option('wcgsc_sheetId');
delete_site_option('wcgsc_sheetId');
delete_option('wcgsc_sheet_feeds');
delete_site_option('wcgsc_sheet_feeds');
delete_option('wcgsc_settings');
delete_site_option('wcgsc_settings');
delete_option('wcgsc_order_states');
delete_site_option('wcgsc_order_states');
delete_option('wcgsc_api_free_creds');
delete_site_option('wcgsc_api_free_creds');
delete_option('wcgsc_page_roles_setting');
delete_site_option('wcgsc_page_roles_setting');
delete_option('is_new_client_secret_wcgsc');
delete_site_option('is_new_client_secret_wcgsc');
delete_option('wcgsc_tab_roles_setting');
delete_site_option('wcgsc_tab_roles_setting');
delete_option('wcgsc_email_account');
delete_site_option('wcgsc_email_account');
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
delete_option('WC_GS_info');
delete_site_option('WC_GS_info');
delete_option('wcgsc_checkbox_settings');
delete_site_option('wcgsc_checkbox_settings');
delete_option('blog_publicize');
delete_site_option('blog_publicize');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

