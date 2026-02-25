<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whmc_sidepanel');
delete_site_option('whmc_sidepanel');
delete_option('whmc_menu');
delete_site_option('whmc_menu');
delete_option('whmcmiscellaneous');
delete_site_option('whmcmiscellaneous');
delete_option('whmc_notification');
delete_site_option('whmc_notification');
delete_option('whmc_option');
delete_site_option('whmc_option');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

