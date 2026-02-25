<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hamecache_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hamecache_post_types');
delete_site_option('hamecache_post_types');
delete_option('hamecache_extra_pages');
delete_site_option('hamecache_extra_pages');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

