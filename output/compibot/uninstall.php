<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('compibot_activation_redirect');
delete_site_option('compibot_activation_redirect');
delete_option('compibot_wp_rocket_notice_closed');
delete_site_option('compibot_wp_rocket_notice_closed');
delete_option('compibot_updated');
delete_site_option('compibot_updated');

// Delete Transients
delete_transient('compibot_wp_rocket_warning');
delete_site_transient('compibot_wp_rocket_warning');
delete_transient('compibot_activation_error');
delete_site_transient('compibot_activation_error');
delete_transient('compibot_unread_count');
delete_site_transient('compibot_unread_count');
delete_transient('compibot_scan_status');
delete_site_transient('compibot_scan_status');
delete_transient('compibot_update_options_status');
delete_site_transient('compibot_update_options_status');
delete_transient('compibot_updated');
delete_site_transient('compibot_updated');

// Clear Cron Jobs
wp_clear_scheduled_hook('compibot_check_service_cron');
wp_clear_scheduled_hook('compibot_daily_cms_data_cron');
wp_clear_scheduled_hook('compibot_daily_scan_cron');

