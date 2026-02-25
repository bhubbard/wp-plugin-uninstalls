<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reviewmapby_revkang_custom_map_key_map');
delete_site_option('reviewmapby_revkang_custom_map_key_map');
delete_option('reviewmapby_revkang_city_api');
delete_site_option('reviewmapby_revkang_city_api');
delete_option('reviewmapby_revkang_cities_api');
delete_site_option('reviewmapby_revkang_cities_api');
delete_option('reviewmapby_revkang_state_api');
delete_site_option('reviewmapby_revkang_state_api');
delete_option('reviewmapby_revkang_show_map_api');
delete_site_option('reviewmapby_revkang_show_map_api');
delete_option('reviewmapby_revkang_show_posts_api');
delete_site_option('reviewmapby_revkang_show_posts_api');
delete_option('reviewmapby_revkang_count_api');
delete_site_option('reviewmapby_revkang_count_api');
delete_option('reviewmapby_revkang_pincount_api');
delete_site_option('reviewmapby_revkang_pincount_api');
delete_option('reviewmapby_revkang_map_zoom_level');
delete_site_option('reviewmapby_revkang_map_zoom_level');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

