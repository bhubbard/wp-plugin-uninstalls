<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ctm_api_base_url');
delete_site_option('ctm_api_base_url');
delete_option('ctm_debug_enabled');
delete_site_option('ctm_debug_enabled');
delete_option('ctm_dashboard_enabled');
delete_site_option('ctm_dashboard_enabled');
delete_option('ctm_auto_inject_tracking_script');
delete_site_option('ctm_auto_inject_tracking_script');
delete_option('ctm_api_key');
delete_site_option('ctm_api_key');
delete_option('ctm_api_secret');
delete_site_option('ctm_api_secret');
delete_option('ctm_forms_without_phone');
delete_site_option('ctm_forms_without_phone');
delete_option('ctm_api_cf7_enabled');
delete_site_option('ctm_api_cf7_enabled');
delete_option('ctm_api_gf_enabled');
delete_site_option('ctm_api_gf_enabled');
delete_option('call_track_account_script');
delete_site_option('call_track_account_script');
delete_option('ctm_api_auth_account');
delete_site_option('ctm_api_auth_account');
delete_option('ctm_cf7_notice_dismissed');
delete_site_option('ctm_cf7_notice_dismissed');
delete_option('ctm_gf_notice_dismissed');
delete_site_option('ctm_gf_notice_dismissed');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ctm_log_retention_days');
delete_site_option('ctm_log_retention_days');
delete_option('ctm_log_auto_cleanup');
delete_site_option('ctm_log_auto_cleanup');
delete_option('ctm_api_response_times');
delete_site_option('ctm_api_response_times');
delete_option('ctm_api_calls_24h');
delete_site_option('ctm_api_calls_24h');
delete_option('ctm_api_active_key');
delete_site_option('ctm_api_active_key');
delete_option('ctm_api_active_secret');
delete_site_option('ctm_api_active_secret');
delete_option('ctm_tracking_override_checkbox');
delete_site_option('ctm_tracking_override_checkbox');
delete_option('ctm_api_dashboard_enabled');
delete_site_option('ctm_api_dashboard_enabled');
delete_option('ctm_api_tracking_enabled');
delete_site_option('ctm_api_tracking_enabled');
delete_option('ctm_api_cf7_logs');
delete_site_option('ctm_api_cf7_logs');
delete_option('ctm_api_gf_logs');
delete_site_option('ctm_api_gf_logs');
delete_option('ctm_duplicate_prevention_enabled');
delete_site_option('ctm_duplicate_prevention_enabled');
delete_option('ctm_duplicate_prevention_expiration');
delete_site_option('ctm_duplicate_prevention_expiration');
delete_option('ctm_duplicate_prevention_use_session');
delete_site_option('ctm_duplicate_prevention_use_session');
delete_option('ctm_duplicate_prevention_fallback_ip');
delete_site_option('ctm_duplicate_prevention_fallback_ip');
delete_option('ctm_max_log_entries_per_day');
delete_site_option('ctm_max_log_entries_per_day');
delete_option('ctm_max_log_size_mb');
delete_site_option('ctm_max_log_size_mb');
delete_option('ctm_max_total_log_size_mb');
delete_site_option('ctm_max_total_log_size_mb');
delete_option('ctm_max_form_log_entries');
delete_site_option('ctm_max_form_log_entries');
delete_option('ctm_max_form_log_size_mb');
delete_site_option('ctm_max_form_log_size_mb');
delete_option('ctm_duplicate_prevention_update_notice_pending');
delete_site_option('ctm_duplicate_prevention_update_notice_pending');
delete_option('ctm_duplicate_prevention_migrated_2_1_8');
delete_site_option('ctm_duplicate_prevention_migrated_2_1_8');
delete_option('ctm_api_tracking_script');
delete_site_option('ctm_api_tracking_script');
delete_option('ctm_log_email_notifications');
delete_site_option('ctm_log_email_notifications');
delete_option('ctm_log_notification_email');
delete_site_option('ctm_log_notification_email');
delete_option('ctm_include_email');
delete_site_option('ctm_include_email');
delete_option('ctm_include_name');
delete_site_option('ctm_include_name');

// Delete Transients
delete_transient('ctm_last_connection_status');
delete_site_transient('ctm_last_connection_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ctm_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ctm_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ctm_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ctm_imported' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ctm_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ctm_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ctm_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ctm_form_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ctm_import_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ctm_import_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ctm_import_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ctm_import_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ctm_sync_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ctm_sync_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ctm_sync_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ctm_sync_method' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ctm_form_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ctm_form_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ctm_form_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ctm_form_data' ) );

