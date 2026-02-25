<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bt_settings_api');
delete_site_option('bt_settings_api');
delete_option('bt_dismissed_api-keys');
delete_site_option('bt_dismissed_api-keys');
delete_option('bt_settings_general');
delete_site_option('bt_settings_general');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bt_dismissed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

