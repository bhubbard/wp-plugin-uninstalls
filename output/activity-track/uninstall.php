<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atk_known_plugins');
delete_site_option('atk_known_plugins');
delete_option('atk_options');
delete_site_option('atk_options');
delete_option('atk_ai_db_version');
delete_site_option('atk_ai_db_version');
delete_option('atk_notification');
delete_site_option('atk_notification');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_atkai_geoiploc_%', '_site_transient_atkai_geoiploc_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('atkai_network_create_tables_event');
wp_clear_scheduled_hook('atk_ai_logs_cleanup_daily_event');

