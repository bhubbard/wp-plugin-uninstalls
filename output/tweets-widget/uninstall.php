<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'twitter_api_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('loklak-settings');
delete_site_option('loklak-settings');
delete_option('loklak_init');
delete_site_option('loklak_init');
delete_option('loklak-settings[loklak_api]');
delete_site_option('loklak-settings[loklak_api]');

