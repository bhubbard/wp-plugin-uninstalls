<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bunnycdn_api_key');
delete_site_option('bunnycdn_api_key');
delete_option('bunnycdn_pull_zone');
delete_site_option('bunnycdn_pull_zone');
delete_option('bunnycdn_excluded_urls');
delete_site_option('bunnycdn_excluded_urls');
delete_option('bunnycdn_always_purge');
delete_site_option('bunnycdn_always_purge');
delete_option('bunnycdn_pull_zone_name');
delete_site_option('bunnycdn_pull_zone_name');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_bunnycdn_purge_scheduled_%', '_site_transient_bunnycdn_purge_scheduled_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('bunnycdn_purge_event');

