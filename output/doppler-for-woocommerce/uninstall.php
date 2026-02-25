<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dplr_version');
delete_site_option('dplr_version');
delete_option('dplr_settings');
delete_site_option('dplr_settings');
delete_option('dplrwoo_api_connected');
delete_site_option('dplrwoo_api_connected');
delete_option('dplrwoo_last_synch');
delete_site_option('dplrwoo_last_synch');
delete_option('dplr_subscribers_list');
delete_site_option('dplr_subscribers_list');
delete_option('dplrwoo_mapping');
delete_site_option('dplrwoo_mapping');
delete_option('dplrwoo_version');
delete_site_option('dplrwoo_version');
delete_option('dplr_wc_consent_text');
delete_site_option('dplr_wc_consent_text');
delete_option('dplr_wc_consent_location');
delete_site_option('dplr_wc_consent_location');
delete_option('dplr_wc_open_graph_meta');
delete_site_option('dplr_wc_open_graph_meta');
delete_option('dplr_wc_consent');
delete_site_option('dplr_wc_consent');

// Clear Cron Jobs
wp_clear_scheduled_hook('dplrwoo_cron_job');
wp_clear_scheduled_hook('dplrwoo_cron_clean_views');
wp_clear_scheduled_hook('dplrwoo_synch_cron');

