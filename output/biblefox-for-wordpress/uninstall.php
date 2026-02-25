<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bfox-blog-options');
delete_site_option('bfox-blog-options');
delete_option('bfox-ms-allow-blog-options');
delete_site_option('bfox-ms-allow-blog-options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bfox_blog_network_post_refresh');
delete_site_option('bfox_blog_network_post_refresh');
delete_option('bfox_blog_post_refresh');
delete_site_option('bfox_blog_post_refresh');
delete_option('bfox_bp_activity_refresh');
delete_site_option('bfox_bp_activity_refresh');
delete_option('bfox-enable-bible-directory');
delete_site_option('bfox-enable-bible-directory');
delete_option('bfox_translations');
delete_site_option('bfox_translations');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

