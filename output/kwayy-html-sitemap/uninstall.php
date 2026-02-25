<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kwayyhs_do_activation_redirect');
delete_site_option('kwayyhs_do_activation_redirect');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'kwayyhs_active_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('kwayyhs_sortorder');
delete_site_option('kwayyhs_sortorder');
delete_option('global-admin-bar-roles');
delete_site_option('global-admin-bar-roles');
delete_option('kwayyhs_exclude');
delete_site_option('kwayyhs_exclude');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'kwayyhs_newname_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

