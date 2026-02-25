<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alfchecker__alc_method');
delete_site_option('alfchecker__alc_method');
delete_option('alfchecker__alc_list');
delete_site_option('alfchecker__alc_list');
delete_option('alfchecker__alc_value');
delete_site_option('alfchecker__alc_value');
delete_option('alfchecker__alc_slack_hook');
delete_site_option('alfchecker__alc_slack_hook');
delete_option('alfchecker__alc_email');
delete_site_option('alfchecker__alc_email');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('aflc_add_every_hour');

