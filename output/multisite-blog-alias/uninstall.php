<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blog_alias_redirect_with_path');
delete_site_option('blog_alias_redirect_with_path');
delete_option('blog_alias_redirect_wp_admin');
delete_site_option('blog_alias_redirect_wp_admin');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('multisite_blog_alias_sunrise_active');
delete_site_option('multisite_blog_alias_sunrise_active');

