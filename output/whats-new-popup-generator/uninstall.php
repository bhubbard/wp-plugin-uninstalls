<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('popup_plugin_value_subject');
delete_site_option('popup_plugin_value_subject');
delete_option('popup_plugin_value_width');
delete_site_option('popup_plugin_value_width');
delete_option('popup_plugin_value_maxwidth');
delete_site_option('popup_plugin_value_maxwidth');
delete_option('popup_plugin_value_padding');
delete_site_option('popup_plugin_value_padding');
delete_option('popup_plugin_value_btncolor');
delete_site_option('popup_plugin_value_btncolor');
delete_option('popup_plugin_value_namecolor');
delete_site_option('popup_plugin_value_namecolor');
delete_option('popup_plugin_value_whatscolor');
delete_site_option('popup_plugin_value_whatscolor');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'popup_plugin_value_title%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'popup_plugin_value_link%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'popup_plugin_value_tab%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('popup_plugin_value_tag');
delete_site_option('popup_plugin_value_tag');
delete_option('popup_plugin_value_shortcode');
delete_site_option('popup_plugin_value_shortcode');
delete_option('popup_plugin_value_tab');
delete_site_option('popup_plugin_value_tab');

