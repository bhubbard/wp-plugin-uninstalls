<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'digg_setting_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('digg_setting_button_style');
delete_site_option('digg_setting_button_style');
delete_option('digg_setting_widget_advanced');
delete_site_option('digg_setting_widget_advanced');
delete_option('digg_setting_button_enabled');
delete_site_option('digg_setting_button_enabled');
delete_option('digg_setting_widget_html');
delete_site_option('digg_setting_widget_html');
delete_option('digg_setting_button_location');
delete_site_option('digg_setting_button_location');
delete_option('digg_setting_button_type');
delete_site_option('digg_setting_button_type');
delete_option('digg_setting_button_position');
delete_site_option('digg_setting_button_position');
delete_option('digg_setting_button_alignment');
delete_site_option('digg_setting_button_alignment');
delete_option('digg_setting_button_topic');
delete_site_option('digg_setting_button_topic');
delete_option('digg_setting_widget_json');
delete_site_option('digg_setting_widget_json');
delete_option('digg_setting_widget_enabled');
delete_site_option('digg_setting_widget_enabled');

