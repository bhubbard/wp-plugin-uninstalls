<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_updated' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('renesse_widget_events');
delete_site_option('renesse_widget_events');
delete_option('renesse_widget_activities');
delete_site_option('renesse_widget_activities');
delete_option('renesse_widget_plugin_position');
delete_site_option('renesse_widget_plugin_position');

