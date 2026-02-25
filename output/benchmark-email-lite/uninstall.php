<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbme_key');
delete_site_option('wpbme_key');
delete_option('wpbme_temp_token');
delete_site_option('wpbme_temp_token');
delete_option('wpbme_usage_disable');
delete_site_option('wpbme_usage_disable');
delete_option('wpbme_debug');
delete_site_option('wpbme_debug');
delete_option('wpbme_temp_token_ttl');
delete_site_option('wpbme_temp_token_ttl');
delete_option('wpbme_ap_token');
delete_site_option('wpbme_ap_token');
delete_option('wpbme_tracking_disable');
delete_site_option('wpbme_tracking_disable');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpbme_legacy_widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpbme_sister_dismissed');
delete_site_option('wpbme_sister_dismissed');
delete_option('wpbme_db_version');
delete_site_option('wpbme_db_version');
delete_option('benchmark-email-lite_group');
delete_site_option('benchmark-email-lite_group');
delete_option('bmew_key');
delete_site_option('bmew_key');
delete_option('widget_benchmarkemaillite_widget');
delete_site_option('widget_benchmarkemaillite_widget');
delete_option('widget_wpbme_widget');
delete_site_option('widget_wpbme_widget');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_fallback', '_site_transient_%_fallback' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('wpbme_token_renew');

