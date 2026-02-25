<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gocache_option-auto_clear_sitemap_url');
delete_site_option('gocache_option-auto_clear_sitemap_url');
delete_option('gocache_option-auto_clear_amp_url');
delete_site_option('gocache_option-auto_clear_amp_url');
delete_option('gocache_option-amp');
delete_site_option('gocache_option-amp');
delete_option('gocache_option-external_configs');
delete_site_option('gocache_option-external_configs');
delete_option('gocache_option-status');
delete_site_option('gocache_option-status');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'gocache_option-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

