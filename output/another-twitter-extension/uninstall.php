<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dt_atp_status_enabled');
delete_site_option('dt_atp_status_enabled');
delete_option('dt_atp_textbox');
delete_site_option('dt_atp_textbox');
delete_option('dt_atp_currently_active');
delete_site_option('dt_atp_currently_active');
delete_option('dt_atp_last_update_time');
delete_site_option('dt_atp_last_update_time');
delete_option('dt_atp_number_of_tweets');
delete_site_option('dt_atp_number_of_tweets');
delete_option('dt_atp_number_of_saved_tweets');
delete_site_option('dt_atp_number_of_saved_tweets');
delete_option('dt_atp_cron_time');
delete_site_option('dt_atp_cron_time');
delete_option('dt_atp_textarea_style');
delete_site_option('dt_atp_textarea_style');
delete_option('dt_atp_customer_key');
delete_site_option('dt_atp_customer_key');
delete_option('dt_atp_customer_secret');
delete_site_option('dt_atp_customer_secret');
delete_option('dt_atp_access_token');
delete_site_option('dt_atp_access_token');
delete_option('dt_atp_access_token_secret');
delete_site_option('dt_atp_access_token_secret');
delete_option('dt_atp_radio');
delete_site_option('dt_atp_radio');
delete_option('dt_atp_wp_cron_enabled');
delete_site_option('dt_atp_wp_cron_enabled');
delete_option('dt_atp_wrapper_class');
delete_site_option('dt_atp_wrapper_class');
delete_option('dt_atp_date_format');
delete_site_option('dt_atp_date_format');

// Delete Transients
delete_transient('schedule');
delete_site_transient('schedule');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_ajax_dt_atp_get_new_tweets');

