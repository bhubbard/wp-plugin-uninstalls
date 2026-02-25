<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nmc_activity_log');
delete_site_option('nmc_activity_log');
delete_option('new_option_name');
delete_site_option('new_option_name');
delete_option('some_other_option');
delete_site_option('some_other_option');
delete_option('option_etc');
delete_site_option('option_etc');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'theme_mods_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

