<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('almaweb_settings');
delete_site_option('almaweb_settings');
delete_option('almaweb_db_version');
delete_site_option('almaweb_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('almaweb_upgrade_error');
delete_site_transient('almaweb_upgrade_error');
delete_transient('almaweb_distinct_families');
delete_site_transient('almaweb_distinct_families');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_almaweb_visits_by_family_%', '_site_transient_almaweb_visits_by_family_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('almaweb_top_referrers');
delete_site_transient('almaweb_top_referrers');
delete_transient('almaweb_referrer_timeline');
delete_site_transient('almaweb_referrer_timeline');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_almaweb_referrer_insights_%', '_site_transient_almaweb_referrer_insights_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('almaweb_daily_cleanup');

