<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fusewp_dismiss_leave_review_forever');
delete_site_option('fusewp_dismiss_leave_review_forever');
delete_option('fusewp_install_date');
delete_site_option('fusewp_install_date');
delete_option('fusewp_connect_token');
delete_site_option('fusewp_connect_token');
delete_option('fusewp_license_key');
delete_site_option('fusewp_license_key');
delete_option('fusewp_upgrader_success_flag');
delete_site_option('fusewp_upgrader_success_flag');
delete_option('fwp_db_ver');
delete_site_option('fwp_db_ver');
delete_option('fusewp_plugin_activated');
delete_site_option('fusewp_plugin_activated');
delete_option('fusewp_bulk_sync_processed_cache');
delete_site_option('fusewp_bulk_sync_processed_cache');
delete_option('fusewp_db_ver');
delete_site_option('fusewp_db_ver');
delete_option('fusewp_bulk_sync_flag');
delete_site_option('fusewp_bulk_sync_flag');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pand-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fusewp_license_status');
delete_site_option('fusewp_license_status');
delete_option('fusewp_license_expired_status');
delete_site_option('fusewp_license_expired_status');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_email_list', '_site_transient_%_email_list' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_yolo-plugin-info-%', '_site_transient_yolo-plugin-info-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('fusewp_aweber_email_list');
delete_site_transient('fusewp_aweber_email_list');
delete_transient('fusewp_constant_contact_contact_fields');
delete_site_transient('fusewp_constant_contact_contact_fields');
delete_transient('fusewp_constant_contact_email_list');
delete_site_transient('fusewp_constant_contact_email_list');
delete_transient('fusewp_constant_contact_tags');
delete_site_transient('fusewp_constant_contact_tags');
delete_transient('fusewp_google_sheet_files');
delete_site_transient('fusewp_google_sheet_files');
delete_transient('fusewp_google_sheets_columns');
delete_site_transient('fusewp_google_sheets_columns');
delete_transient('fusewp_google_sheet_files_sheets');
delete_site_transient('fusewp_google_sheet_files_sheets');
delete_transient('fusewp_hubspot_v3api_email_list');
delete_site_transient('fusewp_hubspot_v3api_email_list');
delete_transient('fusewp_hubspot_contact_fields');
delete_site_transient('fusewp_hubspot_contact_fields');
delete_transient('fusewp_hubspot_get_owners');
delete_site_transient('fusewp_hubspot_get_owners');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_fusewp_hubspot_contact_id_%', '_site_transient_fusewp_hubspot_contact_id_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('fusewp_salesforce_email_list');
delete_site_transient('fusewp_salesforce_email_list');
delete_transient('fusewp_salesforce_topics');
delete_site_transient('fusewp_salesforce_topics');
delete_transient('zohocampaigns_contact_fields');
delete_site_transient('zohocampaigns_contact_fields');

// Clear Cron Jobs
wp_clear_scheduled_hook('fusewp_daily_recurring_job');

