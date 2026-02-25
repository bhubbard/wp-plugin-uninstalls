<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('new_Api_key');
delete_site_option('new_Api_key');
delete_option('plzsharemeShortUrlApiUrl');
delete_site_option('plzsharemeShortUrlApiUrl');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'plzsharemeShortURL%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('TwitterTag');
delete_site_option('TwitterTag');
delete_option('GoogleTag');
delete_site_option('GoogleTag');
delete_option('PinterestTag');
delete_site_option('PinterestTag');
delete_option('FacebookTag');
delete_site_option('FacebookTag');
delete_option('plzshareme_plugin_do_activation_redirect');
delete_site_option('plzshareme_plugin_do_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'plzsharemeShortURL' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'plzsharemeShortURL' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'plzsharemeShortURL' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'plzsharemeShortURL' ) );

