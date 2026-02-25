<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_sitemap_custom_css');
delete_site_option('easy_sitemap_custom_css');
delete_option('easy_sitemap_cache_enabled');
delete_site_option('easy_sitemap_cache_enabled');
delete_option('easy_sitemap_cache_expiry');
delete_site_option('easy_sitemap_cache_expiry');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'easy_sitemap_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

