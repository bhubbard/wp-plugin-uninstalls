<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-backitup_dismissed_notices');
delete_site_option('wp-backitup_dismissed_notices');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_critical_plugins' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_critical_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wp-backitup_new_install');
delete_site_option('wp-backitup_new_install');
delete_option('wp-backitup_major_version');
delete_site_option('wp-backitup_major_version');
delete_option('wp-backitup_minor_version');
delete_site_option('wp-backitup_minor_version');
delete_option('wp-backitup_logging');
delete_site_option('wp-backitup_logging');
delete_option('wp-backitup_db_version');
delete_site_option('wp-backitup_db_version');
delete_option('wp-backitup_backup_batch_size');
delete_site_option('wp-backitup_backup_batch_size');
delete_option('wp-backitup_lite_registration_first_name');
delete_site_option('wp-backitup_lite_registration_first_name');
delete_option('wp-backitup_license_customer_name');
delete_site_option('wp-backitup_license_customer_name');
delete_option('wp-backitup_lite_registration_email');
delete_site_option('wp-backitup_lite_registration_email');
delete_option('wp-backitup_license_customer_email');
delete_site_option('wp-backitup_license_customer_email');
delete_option('wp-backitup_backup_dbtables_batch_size');
delete_site_option('wp-backitup_backup_dbtables_batch_size');
delete_option('wp-backitup_license_product_id');
delete_site_option('wp-backitup_license_product_id');
delete_option('wp-backitup_license_type');
delete_site_option('wp-backitup_license_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_delete_all' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('wpbackitup_admin_notices');
delete_site_transient('wpbackitup_admin_notices');
delete_transient('_wpbackitup_activation_redirect');
delete_site_transient('_wpbackitup_activation_redirect');
delete_transient('error-support-email');
delete_site_transient('error-support-email');
delete_transient('error-support-ticket');
delete_site_transient('error-support-ticket');
delete_transient('settings_errors');
delete_site_transient('settings_errors');
delete_transient('support_ticket_id');
delete_site_transient('support_ticket_id');
delete_transient('support_body');
delete_site_transient('support_body');
delete_transient('error-support-body');
delete_site_transient('error-support-body');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpbackitup_weekly_scheduled_events');
wp_clear_scheduled_hook('wpbackitup_daily_scheduled_events');
wp_clear_scheduled_hook('wpbackitup_queue_scheduled_jobs');
wp_clear_scheduled_hook('wpbackitup_aggregate_content_changes');
wp_clear_scheduled_hook('wpbackitup_check_updates');
wp_clear_scheduled_hook('wpbackitup_cleanup_old_events');
wp_clear_scheduled_hook('wpbackitup_aggregate_security');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp-backitup_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp-backitup_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp-backitup_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp-backitup_dismissed_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_is_custom_header' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_is_custom_header' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_is_custom_header' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_is_custom_header' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_is_custom_background' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_is_custom_background' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_is_custom_background' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_is_custom_background' ) );

