<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('brandbees_preparation_type');
delete_site_option('brandbees_preparation_type');
delete_option('brandbees_global_preparation_time');
delete_site_option('brandbees_global_preparation_time');
delete_option('brandbees_cutoff_enabled');
delete_site_option('brandbees_cutoff_enabled');
delete_option('brandbees_cutoff_order_types');
delete_site_option('brandbees_cutoff_order_types');
delete_option('brandbees_cutoff_time');
delete_site_option('brandbees_cutoff_time');
delete_option('brandbees_cutoff_timezone');
delete_site_option('brandbees_cutoff_timezone');
delete_option('brandbees_cutoff_days');
delete_site_option('brandbees_cutoff_days');
delete_option('brandbees_cutoff_same_day');
delete_site_option('brandbees_cutoff_same_day');
delete_option('brandbees_cutoff_notice_message');
delete_site_option('brandbees_cutoff_notice_message');
delete_option('brandbees_estimate_enabled_product');
delete_site_option('brandbees_estimate_enabled_product');
delete_option('brandbees_estimate_enabled_cart');
delete_site_option('brandbees_estimate_enabled_cart');
delete_option('brandbees_estimate_enabled_checkout');
delete_site_option('brandbees_estimate_enabled_checkout');
delete_option('brandbees_estimate_display_text');
delete_site_option('brandbees_estimate_display_text');
delete_option('brandbees_estimate_date_format');
delete_site_option('brandbees_estimate_date_format');
delete_option('brandbees_delivery_estimate_date_format_custom');
delete_site_option('brandbees_delivery_estimate_date_format_custom');
delete_option('brandbees_label_delivery_date');
delete_site_option('brandbees_label_delivery_date');
delete_option('brandbees_label_time_slot');
delete_site_option('brandbees_label_time_slot');
delete_option('brandbees_label_estimated_delivery');
delete_site_option('brandbees_label_estimated_delivery');
delete_option('brandbees_label_required_error');
delete_site_option('brandbees_label_required_error');
delete_option('brandbees_label_unavailable_error');
delete_site_option('brandbees_label_unavailable_error');
delete_option('brandbees_delivery_schedule');
delete_site_option('brandbees_delivery_schedule');
delete_option('brandbees_estimate_date_format_custom');
delete_site_option('brandbees_estimate_date_format_custom');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('brandbees_db_version');
delete_site_option('brandbees_db_version');
delete_option('brandbees_prep_time_hours');
delete_site_option('brandbees_prep_time_hours');
delete_option('brandbees_days_ahead');
delete_site_option('brandbees_days_ahead');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_brandbees_estimate_%', '_site_transient_brandbees_estimate_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('brandbees_estimate_cart');
delete_site_transient('brandbees_estimate_cart');

// Clear Cron Jobs
wp_clear_scheduled_hook('brandbees_cleanup_old_bookings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'brandbees_preparation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'brandbees_preparation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'brandbees_preparation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'brandbees_preparation_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fulfillment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fulfillment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fulfillment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fulfillment_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_delivery_time_slot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_delivery_time_slot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_delivery_time_slot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_delivery_time_slot' ) );

