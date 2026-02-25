<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('off_analytics_notice_displayed');
delete_site_option('off_analytics_notice_displayed');
delete_option('wcliqpay_analytics_enabled');
delete_site_option('wcliqpay_analytics_enabled');
delete_option('woocommerce_liqpay_settings');
delete_site_option('woocommerce_liqpay_settings');

// Delete Transients
delete_transient('wcliqpay_send_remote_analytics_data');
delete_site_transient('wcliqpay_send_remote_analytics_data');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wcliqpay_notice_dismissed_%', '_site_transient_wcliqpay_notice_dismissed_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'product_rro_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'product_rro_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'product_rro_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'product_rro_id' ) );

