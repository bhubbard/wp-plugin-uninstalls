<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wooctrl_thumb_size');
delete_site_option('wooctrl_thumb_size');
delete_option('wooctrl_include_thumbs');
delete_site_option('wooctrl_include_thumbs');
delete_option('wooctrl_embed_images');
delete_site_option('wooctrl_embed_images');
delete_option('woocommerce_email_header_image');
delete_site_option('woocommerce_email_header_image');
delete_option('wooctrl_image_wrapper');
delete_site_option('wooctrl_image_wrapper');
delete_option('wooctrl_include_cats');
delete_site_option('wooctrl_include_cats');
delete_option('wooctrl_include_all_cats');
delete_site_option('wooctrl_include_all_cats');
delete_option('wooctrl_include_sku');
delete_site_option('wooctrl_include_sku');
delete_option('wooctrl_custom_image_size');
delete_site_option('wooctrl_custom_image_size');
delete_option('wooctrl_latest_test_email');
delete_site_option('wooctrl_latest_test_email');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );

