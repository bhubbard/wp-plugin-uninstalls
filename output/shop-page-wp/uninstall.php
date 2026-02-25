<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shop-page-wp-button-text');
delete_site_option('shop-page-wp-button-text');
delete_option('shop-page-wp-show-choose-styles');
delete_site_option('shop-page-wp-show-choose-styles');
delete_option('shop-page-wp-show-default-columns');
delete_site_option('shop-page-wp-show-default-columns');
delete_option('shop-page-wp-link-target');
delete_site_option('shop-page-wp-link-target');
delete_option('shop-page-wp-legacy-format');
delete_site_option('shop-page-wp-legacy-format');
delete_option('shop-page-wp-image-width');
delete_site_option('shop-page-wp-image-width');
delete_option('shop-page-wp-image-height');
delete_site_option('shop-page-wp-image-height');
delete_option('shop-page-wp-image-crop');
delete_site_option('shop-page-wp-image-crop');
delete_option('shop-page-wp-iw-field-change');
delete_site_option('shop-page-wp-iw-field-change');
delete_option('shop-page-wp-ih-field-change');
delete_site_option('shop-page-wp-ih-field-change');
delete_option('shop-page-wp-ic-field-change');
delete_site_option('shop-page-wp-ic-field-change');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

