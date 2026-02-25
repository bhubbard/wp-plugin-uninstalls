<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcareers');
delete_site_option('wpcareers');
delete_option('wpca_affiliate_id');
delete_site_option('wpca_affiliate_id');
delete_option('wpca_userId');
delete_site_option('wpca_userId');
delete_option('wpca_password');
delete_site_option('wpca_password');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%before_Tag' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%after_Tag' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rss_language');
delete_site_option('rss_language');

