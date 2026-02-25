<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('RemoveBG_ApiKey');
delete_site_option('RemoveBG_ApiKey');
delete_option('RemoveBG_products');
delete_site_option('RemoveBG_products');
delete_option('RemoveBG_products_IDs');
delete_site_option('RemoveBG_products_IDs');
delete_option('RemoveBG_thumbnail');
delete_site_option('RemoveBG_thumbnail');
delete_option('RemoveBG_gallery');
delete_site_option('RemoveBG_gallery');
delete_option('RemoveBG_Background');
delete_site_option('RemoveBG_Background');
delete_option('RemoveBG_Background_Color');
delete_site_option('RemoveBG_Background_Color');
delete_option('RemoveBG_Preserve_Resize');
delete_site_option('RemoveBG_Preserve_Resize');
delete_option('RemoveBG_Include_Processed');
delete_site_option('RemoveBG_Include_Processed');
delete_option('RemoveBG_Background_Image');
delete_site_option('RemoveBG_Background_Image');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_image_gallery' ) );

