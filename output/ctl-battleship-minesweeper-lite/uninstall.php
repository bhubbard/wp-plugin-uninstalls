<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CTL_ARCADE_LITE_PLUGIN_VERSION');
delete_site_option('CTL_ARCADE_LITE_PLUGIN_VERSION');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_do_activation_redirect' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ctl-battleship-minesweeper-lite_do_activation_redirect');
delete_site_option('ctl-battleship-minesweeper-lite_do_activation_redirect');

