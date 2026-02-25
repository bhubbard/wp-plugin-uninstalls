<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('values');
delete_site_option('values');
delete_option('uvis_default_basemaps');
delete_site_option('uvis_default_basemaps');
delete_option('uvis_basemaps');
delete_site_option('uvis_basemaps');
delete_option('uvis_playlist_post_type_name_singular');
delete_site_option('uvis_playlist_post_type_name_singular');
delete_option('uvis_playlist_post_type_name_plural');
delete_site_option('uvis_playlist_post_type_name_plural');
delete_option('uvis_playlist_post_type');
delete_site_option('uvis_playlist_post_type');
delete_option('uvis_playlist_post_meta');
delete_site_option('uvis_playlist_post_meta');
delete_option('uvis_playlist_dropdown_number');
delete_site_option('uvis_playlist_dropdown_number');
delete_option('uvis_visualization_post_type');
delete_site_option('uvis_visualization_post_type');
delete_option('uvis_visualization_post_type_name_plural');
delete_site_option('uvis_visualization_post_type_name_plural');
delete_option('uvis_playlist_enable_dropdown');
delete_site_option('uvis_playlist_enable_dropdown');
delete_option('uvis_visualization_post_type_name_singular');
delete_site_option('uvis_visualization_post_type_name_singular');
delete_option('uvis_convert_shortcodes');
delete_site_option('uvis_convert_shortcodes');
delete_option('uvis_active_modules');
delete_site_option('uvis_active_modules');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'uvis_playlist_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'uvis_playlist_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'uvis_playlist_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'uvis_playlist_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'uvis_module' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'uvis_module' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'uvis_module' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'uvis_module' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'uvis_config' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'uvis_config' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'uvis_config' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'uvis_config' ) );

