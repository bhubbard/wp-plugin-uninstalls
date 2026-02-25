<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wgo_notify_requests_less_than_x_percent');
delete_site_option('wgo_notify_requests_less_than_x_percent');
delete_option('wgo_days_to_store');
delete_site_option('wgo_days_to_store');
delete_option('wgo_db_version');
delete_site_option('wgo_db_version');
delete_option('wgo_limit_requests_per_minute');
delete_site_option('wgo_limit_requests_per_minute');
delete_option('wgo_limit_requests_per_hour');
delete_site_option('wgo_limit_requests_per_hour');
delete_option('wgo_im_behind_proxy');
delete_site_option('wgo_im_behind_proxy');
delete_option('wgo_notification_email');
delete_site_option('wgo_notification_email');
delete_option('wgo_save_payloads');
delete_site_option('wgo_save_payloads');
delete_option('wgo_save_payloads_matching_uri_regex');
delete_site_option('wgo_save_payloads_matching_uri_regex');
delete_option('wgo_save_payloads_matching_payload_regex');
delete_site_option('wgo_save_payloads_matching_payload_regex');
delete_option('wgo_notify_requests_more_than_sd');
delete_site_option('wgo_notify_requests_more_than_sd');
delete_option('wgo_notify_requests_more_than_2sd');
delete_site_option('wgo_notify_requests_more_than_2sd');
delete_option('wgo_notify_requests_more_than_3sd');
delete_site_option('wgo_notify_requests_more_than_3sd');
delete_option('wgo_autoreload_datatables');
delete_site_option('wgo_autoreload_datatables');
delete_option('wgo_waf_installed');
delete_site_option('wgo_waf_installed');

// Clear Cron Jobs
wp_clear_scheduled_hook('wgo_cron_check_waf_install');
wp_clear_scheduled_hook('wgo_cron_remove_old_data_hook');
wp_clear_scheduled_hook('wgo_cron_fill_country_columns_hook');
wp_clear_scheduled_hook('wgo_cron_notify_ddos_hook');
wp_clear_scheduled_hook('wgo_cron_process_ban_rules_hook');

