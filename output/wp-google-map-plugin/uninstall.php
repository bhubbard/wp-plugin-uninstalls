<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpgmp_settings');
delete_site_option('wpgmp_settings');
delete_option('wpgmp_location_extrafields');
delete_site_option('wpgmp_location_extrafields');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fc_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_latest_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('weplugins_notification');
delete_site_option('weplugins_notification');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-fc-styles' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpgmp_integrations_data');
delete_site_option('wpgmp_integrations_data');
delete_option('wpgmp_current_csv');
delete_site_option('wpgmp_current_csv');
delete_option('op_activated');
delete_site_option('op_activated');
delete_option('wpgmp_language');
delete_site_option('wpgmp_language');
delete_option('wpgmp_api_key');
delete_site_option('wpgmp_api_key');
delete_option('wpgmp_scripts_place');
delete_site_option('wpgmp_scripts_place');
delete_option('wpgmp_allow_meta');
delete_site_option('wpgmp_allow_meta');
delete_option('wpgmp_scripts_minify');
delete_site_option('wpgmp_scripts_minify');
delete_option('wpgmp_version');
delete_site_option('wpgmp_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpmapspro_check_notification');

