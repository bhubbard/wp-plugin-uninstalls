<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('woo_variation_duplicator_cloned_ids');
delete_site_transient('woo_variation_duplicator_cloned_ids');
delete_transient('woo_variation_duplicator_exceed_clone_limit');
delete_site_transient('woo_variation_duplicator_exceed_clone_limit');
delete_transient('woo_variation_duplicator_image_cloned');
delete_site_transient('woo_variation_duplicator_image_cloned');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wc_additional_variation_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wc_additional_variation_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wc_additional_variation_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wc_additional_variation_images' ) );

