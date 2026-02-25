<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_mainwp_stream_network');
delete_site_option('wp_mainwp_stream_network');
delete_option('wp_mainwp_stream');
delete_site_option('wp_mainwp_stream');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_connectors' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_registered_connectors' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mainwp_child_reports_db');
delete_site_option('mainwp_child_reports_db');
delete_option('mainwp_child_branding_settings');
delete_site_option('mainwp_child_branding_settings');
delete_option('wp_mainwp_stream_plugins_to_delete');
delete_site_option('wp_mainwp_stream_plugins_to_delete');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_mainwp_stream_auto_purge');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rule' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rule' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rule' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rule' ) );

