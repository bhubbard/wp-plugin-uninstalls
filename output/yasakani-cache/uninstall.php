<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yasakani_option');
delete_site_option('yasakani_option');

// Delete Transients
delete_transient('yasakani_statistics');
delete_site_transient('yasakani_statistics');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_yasakani_statistics_%', '_site_transient_yasakani_statistics_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('yasakani_notice');
delete_site_transient('yasakani_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('cron_yasakani_bruteforce_expired');

