<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grw_notice_type');
delete_site_option('grw_notice_type');
delete_option('grw_notice_msg');
delete_site_option('grw_notice_msg');
delete_option('grw_rate_us');
delete_site_option('grw_rate_us');
delete_option('grw_activation_time');
delete_site_option('grw_activation_time');
delete_option('grw_rev_notice_hide');
delete_site_option('grw_rev_notice_hide');
delete_option('rplg_rev_notice_show');
delete_site_option('rplg_rev_notice_show');
delete_option('grw_version');
delete_site_option('grw_version');
delete_option('grw_is_multisite');
delete_site_option('grw_is_multisite');
delete_option('grw_auth_code');
delete_site_option('grw_auth_code');
delete_option('grw_revupd_cron');
delete_site_option('grw_revupd_cron');
delete_option('grw_active');
delete_site_option('grw_active');
delete_option('grw_google_api_key');
delete_site_option('grw_google_api_key');
delete_option('grw_debug_mode');
delete_site_option('grw_debug_mode');
delete_option('grw_last_error');
delete_site_option('grw_last_error');
delete_option('grw_demand_assets');
delete_site_option('grw_demand_assets');
delete_option('grw_async_css');
delete_site_option('grw_async_css');
delete_option('grw_rucss_safelist');
delete_site_option('grw_rucss_safelist');
delete_option('grw_inlinecss_off');
delete_site_option('grw_inlinecss_off');
delete_option('widget_grw_widget');
delete_site_option('widget_grw_widget');
delete_option('grw_feed_ids');
delete_site_option('grw_feed_ids');
delete_option('grw_freq_revs_upd');
delete_site_option('grw_freq_revs_upd');
delete_option('grw_gpa_old');
delete_site_option('grw_gpa_old');
delete_option('grw_do_activation');
delete_site_option('grw_do_activation');
delete_option('grw_revupd_cron_timeout');
delete_site_option('grw_revupd_cron_timeout');
delete_option('grw_revupd_cron_log');
delete_site_option('grw_revupd_cron_log');
delete_option('grw_save_log');
delete_site_option('grw_save_log');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_reviews', '_site_transient_%_reviews' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('grw_revupd_schedule');

