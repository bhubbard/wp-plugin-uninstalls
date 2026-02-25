<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ak404_mailto');
delete_site_option('ak404_mailto');
delete_option('ak404_mail_enabled');
delete_site_option('ak404_mail_enabled');
delete_option('ak404_rss_limit');
delete_site_option('ak404_rss_limit');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ak404_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rss_language');
delete_site_option('rss_language');

