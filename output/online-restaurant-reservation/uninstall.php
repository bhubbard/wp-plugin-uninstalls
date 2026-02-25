<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('online_restaurant_reservation_admin_notices');
delete_site_option('online_restaurant_reservation_admin_notices');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'online_restaurant_reservation_admin_notice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('online_restaurant_reservation_db_version');
delete_site_option('online_restaurant_reservation_db_version');
delete_option('online_restaurant_reservation_queue_flush_rewrite_rules');
delete_site_option('online_restaurant_reservation_queue_flush_rewrite_rules');
delete_option('online_restaurant_reservation_admin_footer_text_rated');
delete_site_option('online_restaurant_reservation_admin_footer_text_rated');
delete_option('online_restaurant_reservation_enable_table_reservation_comments');
delete_site_option('online_restaurant_reservation_enable_table_reservation_comments');
delete_option('online_restaurant_reservation_min_party_size');
delete_site_option('online_restaurant_reservation_min_party_size');
delete_option('online_restaurant_reservation_schedule');
delete_site_option('online_restaurant_reservation_schedule');
delete_option('online_restaurant_reservation_email_from_name');
delete_site_option('online_restaurant_reservation_email_from_name');
delete_option('online_restaurant_reservation_email_from_address');
delete_site_option('online_restaurant_reservation_email_from_address');
delete_option('online_restaurant_reservation_version');
delete_site_option('online_restaurant_reservation_version');
delete_option('online_restaurant_reservation_max_party_size');
delete_site_option('online_restaurant_reservation_max_party_size');
delete_option('online_restaurant_reservation_enable_comments');
delete_site_option('online_restaurant_reservation_enable_comments');
delete_option('online_restaurant_reservation_time_range_steps');
delete_site_option('online_restaurant_reservation_time_range_steps');
delete_option('online_table_reservation_schedule');
delete_site_option('online_table_reservation_schedule');
delete_option('online_restaurant_reservation_email_footer_text');
delete_site_option('online_restaurant_reservation_email_footer_text');
delete_option('online_restaurant_reservation_email_header_image');
delete_site_option('online_restaurant_reservation_email_header_image');
delete_option('online_restaurant_reservation_email_background_color');
delete_site_option('online_restaurant_reservation_email_background_color');
delete_option('online_restaurant_reservation_email_body_background_color');
delete_site_option('online_restaurant_reservation_email_body_background_color');
delete_option('online_restaurant_reservation_email_base_color');
delete_site_option('online_restaurant_reservation_email_base_color');
delete_option('online_restaurant_reservation_email_text_color');
delete_site_option('online_restaurant_reservation_email_text_color');

// Delete Transients
delete_transient('orr_installing');
delete_site_transient('orr_installing');
delete_transient('_orr_activation_redirect');
delete_site_transient('_orr_activation_redirect');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('online_restaurant_reservation_cleanup_sessions');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'angry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'angry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'angry' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'angry' ) );

