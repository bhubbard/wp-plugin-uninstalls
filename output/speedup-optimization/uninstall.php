<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iox_settings');
delete_site_option('iox_settings');
delete_option('speedup01_image_optimizer');
delete_site_option('speedup01_image_optimizer');
delete_option('speedup01_activation_redirect');
delete_site_option('speedup01_activation_redirect');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_iox_bulk_optimize_result_%', '_site_transient_iox_bulk_optimize_result_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('speedup01_cron_hook');

