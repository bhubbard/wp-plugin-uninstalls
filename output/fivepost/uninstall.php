<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fivepost-page-number');
delete_site_option('fivepost-page-number');
delete_option('fivepost-update-date');
delete_site_option('fivepost-update-date');
delete_option('fivepost-barcode');
delete_site_option('fivepost-barcode');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');

// Clear Cron Jobs
wp_clear_scheduled_hook('five_post_every_minute_event');
wp_clear_scheduled_hook('five_post_hourly_event');
wp_clear_scheduled_hook('five_post_deleteoldfiles_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fivepost_order_id_labelprintfile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fivepost_order_id_labelprintfile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fivepost_order_id_labelprintfile' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fivepost_order_id_labelprintfile' ) );

