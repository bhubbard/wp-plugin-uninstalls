<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xyz_gal_thumb_height');
delete_site_option('xyz_gal_thumb_height');
delete_option('xyz_gal_thumb_width');
delete_site_option('xyz_gal_thumb_width');
delete_option('xyz_gal_img_height');
delete_site_option('xyz_gal_img_height');
delete_option('xyz_gal_img_width');
delete_site_option('xyz_gal_img_width');
delete_option('xyz_credit_link');
delete_site_option('xyz_credit_link');
delete_option('xyz_gal_credit_dismiss');
delete_site_option('xyz_gal_credit_dismiss');
delete_option('xyz_gal_page_limit');
delete_site_option('xyz_gal_page_limit');
delete_option('xyz_gal_gallery_height');
delete_site_option('xyz_gal_gallery_height');
delete_option('xyz_gal_gallery_width');
delete_site_option('xyz_gal_gallery_width');
delete_option('xyz_gal_wpgal_responsive');
delete_site_option('xyz_gal_wpgal_responsive');
delete_option('xyz_gal_slideshow');
delete_site_option('xyz_gal_slideshow');
delete_option('xyz_gal_slideshow_interval');
delete_site_option('xyz_gal_slideshow_interval');
delete_option('xyz_gal_wp_gallery_override');
delete_site_option('xyz_gal_wp_gallery_override');
delete_option('xyz_cart_product_gallery');
delete_site_option('xyz_cart_product_gallery');
delete_option('xyz_cls_gallery');
delete_site_option('xyz_cls_gallery');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

