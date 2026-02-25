<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ubermediasettings_settings');
delete_site_option('ubermediasettings_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mmp_version');
delete_site_option('mmp_version');

// Delete Transients
delete_transient('_mmp_activation_redirect');
delete_site_transient('_mmp_activation_redirect');

