<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('psei_salesforce_token');
delete_site_option('psei_salesforce_token');
delete_option('psei_salesforce_instance_url');
delete_site_option('psei_salesforce_instance_url');
delete_option('psei_salesforce_username');
delete_site_option('psei_salesforce_username');
delete_option('psei_salesforce_password');
delete_site_option('psei_salesforce_password');
delete_option('psei_salesforce_client_id');
delete_site_option('psei_salesforce_client_id');
delete_option('psei_salesforce_client_secret');
delete_site_option('psei_salesforce_client_secret');
delete_option('psei_salesforce_login_table');
delete_site_option('psei_salesforce_login_table');
delete_option('psei_salesforce_access_token');
delete_site_option('psei_salesforce_access_token');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('elementor_form_fields');
delete_site_option('elementor_form_fields');
delete_option('psei_salesforce_data');
delete_site_option('psei_salesforce_data');
delete_option('psei_otp_type');
delete_site_option('psei_otp_type');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');

