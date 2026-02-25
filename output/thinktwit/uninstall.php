<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_thinktwit_settings');
delete_site_option('widget_thinktwit_settings');
delete_option('twitter_api_settings');
delete_site_option('twitter_api_settings');
delete_option('thinktwit_do_activation_redirect');
delete_site_option('thinktwit_do_activation_redirect');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_cache' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('widget_thinktwit');
delete_site_option('widget_thinktwit');

