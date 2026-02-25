<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('udigroup_globkurier_ghost_post_id');
delete_site_option('udigroup_globkurier_ghost_post_id');
delete_option('globkurier_token');
delete_site_option('globkurier_token');
delete_option('globkurier_token_expire_at');
delete_site_option('globkurier_token_expire_at');
delete_option('globkurier_extra_pickup_points');
delete_site_option('globkurier_extra_pickup_points');
delete_option('gkStoreInpostPointsValidTime');
delete_site_option('gkStoreInpostPointsValidTime');
delete_option('globkurier');
delete_site_option('globkurier');
delete_option('udigroup_gkInPostPoints');
delete_site_option('udigroup_gkInPostPoints');
delete_option('udigroup_gkInPostPointsDownloadedAt');
delete_site_option('udigroup_gkInPostPointsDownloadedAt');
delete_option('udigroup_gkRuchPointsDownloadedAt');
delete_site_option('udigroup_gkRuchPointsDownloadedAt');
delete_option('udigroup_gkRuchPoints');
delete_site_option('udigroup_gkRuchPoints');
delete_option('globkurier-username');
delete_site_option('globkurier-username');
delete_option('globkurier-password');
delete_site_option('globkurier-password');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_globkurier_inpost_international_points_%', '_site_transient_globkurier_inpost_international_points_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('globkurier_countries_map');
delete_site_transient('globkurier_countries_map');

// Clear Cron Jobs
wp_clear_scheduled_hook('updateInpostPoints');
wp_clear_scheduled_hook('updateInpostPoints2');

