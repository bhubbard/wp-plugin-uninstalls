<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nginxchampuru-cache_expires');
delete_site_option('nginxchampuru-cache_expires');
delete_option('nginxchampuru-enable_flush');
delete_site_option('nginxchampuru-enable_flush');
delete_option('nginxchampuru-cache_dir');
delete_site_option('nginxchampuru-cache_dir');
delete_option('nginxchampuru-cache_levels');
delete_site_option('nginxchampuru-cache_levels');
delete_option('nginxchampuru-publish');
delete_site_option('nginxchampuru-publish');
delete_option('nginxchampuru-comment');
delete_site_option('nginxchampuru-comment');
delete_option('nginxchampuru-add_last_modified');
delete_site_option('nginxchampuru-add_last_modified');
delete_option('cron');
delete_site_option('cron');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nginxchampuru-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('nginxchampuru_flush');
delete_site_transient('nginxchampuru_flush');

