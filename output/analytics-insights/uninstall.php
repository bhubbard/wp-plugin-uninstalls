<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aiwp_network_options');
delete_site_option('aiwp_network_options');
delete_option('aiwp_options');
delete_site_option('aiwp_options');
delete_option('aiwp_version');
delete_site_option('aiwp_version');
delete_option('gadash_network_options');
delete_site_option('gadash_network_options');
delete_option('gadash_options');
delete_site_option('gadash_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_aiwp_cache_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_aiwp_cache_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('aiwp_expired_cache_hook');

