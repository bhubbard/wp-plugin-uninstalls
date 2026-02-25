<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scd_ec');
delete_site_option('scd_ec');
delete_option('td-webmaster-last-caps-update');
delete_site_option('td-webmaster-last-caps-update');
delete_option('td-webmaster-user-role-version');
delete_site_option('td-webmaster-user-role-version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

