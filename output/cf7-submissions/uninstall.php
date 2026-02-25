<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf7s-submissions_version');
delete_site_option('cf7s-submissions_version');
delete_option('cf7s-submissions_install_time');
delete_site_option('cf7s-submissions_install_time');
delete_option('links_updated_date_format');
delete_site_option('links_updated_date_format');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cx-plugin-info-%', '_site_transient_cx-plugin-info-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('codexpert-daily');

