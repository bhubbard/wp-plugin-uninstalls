<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vtm_Host');
delete_site_option('vtm_Host');
delete_option('vtm_db');
delete_site_option('vtm_db');
delete_option('vtm_dbUser');
delete_site_option('vtm_dbUser');
delete_option('vtm_dbPass');
delete_site_option('vtm_dbPass');
delete_option('vrm_prefix');
delete_site_option('vrm_prefix');
delete_option('tax_ids');
delete_site_option('tax_ids');
delete_option('product_cat_children');
delete_site_option('product_cat_children');
delete_option('_transient_wc_attribute_taxonomies');
delete_site_option('_transient_wc_attribute_taxonomies');
delete_option('attribute_ids');
delete_site_option('attribute_ids');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );

