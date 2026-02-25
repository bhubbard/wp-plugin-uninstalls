<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcsn_settings');
delete_site_option('wpcsn_settings');
delete_option('wpcsn_localization');
delete_site_option('wpcsn_localization');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpcsn_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpcsn_opts');
delete_site_option('wpcsn_opts');

// Delete Transients
delete_transient('wpclever_plugins');
delete_site_transient('wpclever_plugins');

