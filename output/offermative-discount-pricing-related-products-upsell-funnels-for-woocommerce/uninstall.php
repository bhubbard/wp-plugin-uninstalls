<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sa_om_generation_settings');
delete_site_option('sa_om_generation_settings');
delete_option('sa_om_admin_details');
delete_site_option('sa_om_admin_details');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_last_synced_at' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sa_om_views_last_synced_at');
delete_site_option('sa_om_views_last_synced_at');
delete_option('sa_om_campaigns_last_synced_at');
delete_site_option('sa_om_campaigns_last_synced_at');
delete_option('sa_om_db_version');
delete_site_option('sa_om_db_version');
delete_option('sa_om_last_synced_at');
delete_site_option('sa_om_last_synced_at');
delete_option('sa_om_campaign_aggressiveness');
delete_site_option('sa_om_campaign_aggressiveness');
delete_option('sa_om_max_orders_to_scan');
delete_site_option('sa_om_max_orders_to_scan');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('_sa_om_activation_redirect');
delete_site_transient('_sa_om_activation_redirect');
delete_transient('sa_om_store_kpis');
delete_site_transient('sa_om_store_kpis');
delete_transient('sa_om_max_active_campaigns_count');
delete_site_transient('sa_om_max_active_campaigns_count');
delete_transient('sa_om_token');
delete_site_transient('sa_om_token');
delete_transient('sa_om_installing');
delete_site_transient('sa_om_installing');
delete_transient('sa_om_updating');
delete_site_transient('sa_om_updating');

// Clear Cron Jobs
wp_clear_scheduled_hook('om_sync_tracking_data_daily');

