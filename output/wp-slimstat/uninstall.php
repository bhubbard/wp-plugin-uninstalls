<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slimstat_tracker_error');
delete_site_option('slimstat_tracker_error');
delete_option('slimstat_geoip_error');
delete_site_option('slimstat_geoip_error');
delete_option('slimstat_permalink_structure_updated');
delete_site_option('slimstat_permalink_structure_updated');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('slimstat_filters');
delete_site_option('slimstat_filters');
delete_option('slimstat_last_geoip_dl');
delete_site_option('slimstat_last_geoip_dl');
delete_option('slimstat_options');
delete_site_option('slimstat_options');
delete_option('slimstat_visit_id');
delete_site_option('slimstat_visit_id');

// Delete Transients
delete_transient('wp_slimstat_addon_list');
delete_site_transient('wp_slimstat_addon_list');
delete_transient('slimstat_your_content');
delete_site_transient('slimstat_your_content');
delete_transient('slimstat_resource_titles');
delete_site_transient('slimstat_resource_titles');
delete_transient('slimstat_ranking_values');
delete_site_transient('slimstat_ranking_values');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_promo_hide', '_site_transient_%_promo_hide' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('slimstat_dynamic_strings');
delete_site_transient('slimstat_dynamic_strings');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wp-slimstat-download-link-%', '_site_transient_wp-slimstat-download-link-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_slimstat_%', '_site_transient_slimstat_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('slimstat_visit_id');
delete_site_transient('slimstat_visit_id');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_slimstat_purge');
wp_clear_scheduled_hook('wp_slimstat_update_geoip_database');

