<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maspik_run_once');
delete_site_option('maspik_run_once');
delete_option('spamcounter');
delete_site_option('spamcounter');
delete_option('maspik_matrix_auto_enabled');
delete_site_option('maspik_matrix_auto_enabled');
delete_option('maspik_columns_last_check');
delete_site_option('maspik_columns_last_check');
delete_option('maspik_db_version');
delete_site_option('maspik_db_version');
delete_option('maspik_dlm_license');
delete_site_option('maspik_dlm_license');
delete_option('errorlog');
delete_site_option('errorlog');
delete_option('spamapi');
delete_site_option('spamapi');
delete_option('shere_data');
delete_site_option('shere_data');
delete_option('maspik_api_requests');
delete_site_option('maspik_api_requests');
delete_option('maspik_recent_ip_checks');
delete_site_option('maspik_recent_ip_checks');
delete_option('maspik_api_id');
delete_site_option('maspik_api_id');
delete_option('maspik_spam_key');
delete_site_option('maspik_spam_key');
delete_option('maspik_blacklist_merged');
delete_site_option('maspik_blacklist_merged');
delete_option('maspik_blacklist_merge_notice');
delete_site_option('maspik_blacklist_merge_notice');
delete_option('maspik_matrix_enabled_notice');
delete_site_option('maspik_matrix_enabled_notice');
delete_option('maspik_matrix_enabled_notice_dismissed');
delete_site_option('maspik_matrix_enabled_notice_dismissed');
delete_option('maspik_matrix_widget_hidden');
delete_site_option('maspik_matrix_widget_hidden');
delete_option('maspik_licensing_version');
delete_site_option('maspik_licensing_version');
delete_option('contact-forms-anti-spam-license-data');
delete_site_option('contact-forms-anti-spam-license-data');

// Delete Transients
delete_transient('maspik_monthly_stats');
delete_site_transient('maspik_monthly_stats');
delete_transient('Mapik_dismissed_shereing_notice');
delete_site_transient('Mapik_dismissed_shereing_notice');
delete_transient('maspik_version_info');
delete_site_transient('maspik_version_info');
delete_transient('maspik_blacklist_merge_notice_dismissed');
delete_site_transient('maspik_blacklist_merge_notice_dismissed');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%flash', '_site_transient_%flash' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('cfas_daily_api_refresh');
wp_clear_scheduled_hook('weekly_to_r_maspik_request');
wp_clear_scheduled_hook('weekly_spam_logs_request');
wp_clear_scheduled_hook('maspik_cfas_dlm_license_check');
wp_clear_scheduled_hook('maspik_dlm_license_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'maspik_whats_new_seen_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'maspik_whats_new_seen_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'maspik_whats_new_seen_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'maspik_whats_new_seen_version' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'maspik_pointer_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'maspik_pointer_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'maspik_pointer_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'maspik_pointer_dismissed' ) );

