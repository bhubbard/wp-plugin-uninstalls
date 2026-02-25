<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'podlove_subscribe_button_default_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('podlove_subscribe_button_default_size');
delete_site_option('podlove_subscribe_button_default_size');
delete_option('podlove_subscribe_button_default_style');
delete_site_option('podlove_subscribe_button_default_style');
delete_option('podlove_subscribe_button_default_format');
delete_site_option('podlove_subscribe_button_default_format');
delete_option('podlove_subscribe_button_default_color');
delete_site_option('podlove_subscribe_button_default_color');
delete_option('podlove_subscribe_button_default_autowidth');
delete_site_option('podlove_subscribe_button_default_autowidth');
delete_option('podlove_subscribe_button_plugin_database_version');
delete_site_option('podlove_subscribe_button_plugin_database_version');

