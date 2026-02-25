<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('image_hub_enable_media_modal');
delete_site_option('image_hub_enable_media_modal');
delete_option('image_hub_max_image_width');
delete_site_option('image_hub_max_image_width');
delete_option('image_hub_max_image_height');
delete_site_option('image_hub_max_image_height');
delete_option('image_hub_api_keys_giphy_api_key');
delete_site_option('image_hub_api_keys_giphy_api_key');
delete_option('image_hub_api_keys_openverse_client_id');
delete_site_option('image_hub_api_keys_openverse_client_id');
delete_option('image_hub_api_keys_openverse_client_secret');
delete_site_option('image_hub_api_keys_openverse_client_secret');
delete_option('image_hub_api_keys_pexels_api_key');
delete_site_option('image_hub_api_keys_pexels_api_key');
delete_option('image_hub_api_keys_pixabay_api_key');
delete_site_option('image_hub_api_keys_pixabay_api_key');
delete_option('image_hub_api_keys_unsplash_access_key');
delete_site_option('image_hub_api_keys_unsplash_access_key');
delete_option('image_hub_enable_unsplash');
delete_site_option('image_hub_enable_unsplash');
delete_option('image_hub_enable_openverse');
delete_site_option('image_hub_enable_openverse');
delete_option('image_hub_enable_pixabay');
delete_site_option('image_hub_enable_pixabay');
delete_option('image_hub_enable_pexels');
delete_site_option('image_hub_enable_pexels');
delete_option('image_hub_enable_giphy');
delete_site_option('image_hub_enable_giphy');
delete_option('image_hub_enable_image_attribution');
delete_site_option('image_hub_enable_image_attribution');
delete_option('image_hub_use_default_keys');
delete_site_option('image_hub_use_default_keys');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'image_hub_enable_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

