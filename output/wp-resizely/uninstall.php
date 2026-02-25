<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-resizely-version');
delete_site_option('wp-resizely-version');
delete_option('wp-resizely');
delete_site_option('wp-resizely');
delete_option('ud::customer_key');
delete_site_option('ud::customer_key');
delete_option('ud::site_uid');
delete_site_option('ud::site_uid');
delete_option('wpp::splash::new_installation');
delete_site_option('wpp::splash::new_installation');
delete_option('wpp::splash::upgrade');
delete_site_option('wpp::splash::upgrade');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_log' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'featured' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'featured' ) );

