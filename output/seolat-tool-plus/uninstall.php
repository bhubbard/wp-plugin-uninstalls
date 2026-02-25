<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('301_redirects');
delete_site_option('301_redirects');
delete_option('api_manager_sl_plus_activated');
delete_site_option('api_manager_sl_plus_activated');
delete_option('seo_lat_tool_plus');
delete_site_option('seo_lat_tool_plus');
delete_option('simple_wp_disp_categories');
delete_site_option('simple_wp_disp_categories');
delete_option('simple_wp_disp_tags');
delete_site_option('simple_wp_disp_tags');
delete_option('simple_wp_disp_authors');
delete_site_option('simple_wp_disp_authors');
delete_option('simple_wp_block_urls');
delete_site_option('simple_wp_block_urls');
delete_option('simple_wp_other_urls');
delete_site_option('simple_wp_other_urls');
delete_option('simple_wp_last_updated');
delete_site_option('simple_wp_last_updated');
delete_option('simple_wp_attr_link');
delete_site_option('simple_wp_attr_link');
delete_option('simple_wp_disp_sitemap_order');
delete_site_option('simple_wp_disp_sitemap_order');
delete_option('simple_wp_premium_code');
delete_site_option('simple_wp_premium_code');
delete_option('simple_wp_sitemap_version');
delete_site_option('simple_wp_sitemap_version');
delete_option('sl_version');
delete_site_option('sl_version');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'twitter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'twitter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'twitter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'twitter' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'author_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'author_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'author_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'author_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'author_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'author_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'author_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'author_desc' ) );

