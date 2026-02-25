<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('andy_show_installation_notice');
delete_site_option('andy_show_installation_notice');
delete_option('andy_plugin_do_redirect');
delete_site_option('andy_plugin_do_redirect');
delete_option('andy_plugin_activation_token');
delete_site_option('andy_plugin_activation_token');
delete_option('andy_injector_public');
delete_site_option('andy_injector_public');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'andy_contact_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('andy_injector_open_on_load');
delete_site_option('andy_injector_open_on_load');
delete_option('andy_injector_position');
delete_site_option('andy_injector_position');
delete_option('andy_injector_widget_size');
delete_site_option('andy_injector_widget_size');
delete_option('andy_notice_dismissed');
delete_site_option('andy_notice_dismissed');
delete_option('andy_injector_primary_color');
delete_site_option('andy_injector_primary_color');

