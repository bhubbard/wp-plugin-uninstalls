<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('psmg_ai_mode');
delete_site_option('psmg_ai_mode');
delete_option('psmg_ai_api_key');
delete_site_option('psmg_ai_api_key');
delete_option('psmg_gallery_columns');
delete_site_option('psmg_gallery_columns');
delete_option('psmg_primary_color');
delete_site_option('psmg_primary_color');
delete_option('psmg_show_search');
delete_site_option('psmg_show_search');
delete_option('psmg_show_titles');
delete_site_option('psmg_show_titles');
delete_option('psmg_show_filter');
delete_site_option('psmg_show_filter');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_psmg_gallery_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_psmg_gallery_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_psmg_gallery_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_psmg_gallery_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'psmg_ai_cache' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'psmg_ai_cache' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'psmg_ai_cache' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'psmg_ai_cache' ) );

