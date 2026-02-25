<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('launchmind_blog_api_base');
delete_site_option('launchmind_blog_api_base');
delete_option('launchmind_blog_api_key');
delete_site_option('launchmind_blog_api_key');
delete_option('launchmind_blog_site_id');
delete_site_option('launchmind_blog_site_id');
delete_option('launchmind_blog_cache_ttl');
delete_site_option('launchmind_blog_cache_ttl');
delete_option('launchmind_blog_base_path');
delete_site_option('launchmind_blog_base_path');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'launchmind_blog_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

