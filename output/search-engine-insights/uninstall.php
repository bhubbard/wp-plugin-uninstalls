<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seiwp_got_updated');
delete_site_option('seiwp_got_updated');
delete_option('seiwp_redeemed_code');
delete_site_option('seiwp_redeemed_code');
delete_option('seiwp_network_options');
delete_site_option('seiwp_network_options');
delete_option('seiwp_options');
delete_site_option('seiwp_options');
delete_option('seiwp_version');
delete_site_option('seiwp_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_seiwp_cache_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_seiwp_cache_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('seiwp_expired_cache_hook');

