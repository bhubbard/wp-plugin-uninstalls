<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rpaefw_ops_index');
delete_site_option('rpaefw_ops_index');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('rpaefw_dogovor');
delete_site_option('rpaefw_dogovor');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocs');
delete_site_option('woocs');
delete_option('rpaefw_hide_info_log');
delete_site_option('rpaefw_hide_info_log');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('rpaefw_use_auto_email_tracking_code');
delete_site_option('rpaefw_use_auto_email_tracking_code');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_post_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_post_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_post_tracking_number' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_post_tracking_number' ) );

