<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sknh_settings');
delete_site_option('sknh_settings');
delete_option('sknh_version');
delete_site_option('sknh_version');
delete_option('sknh_activation_time');
delete_site_option('sknh_activation_time');
delete_option('sknh_last_settings_update');
delete_site_option('sknh_last_settings_update');

// Delete Transients
delete_transient('sknh_update_data');
delete_site_transient('sknh_update_data');
delete_transient('sknh_notice_cache');
delete_site_transient('sknh_notice_cache');
delete_transient('sknh_auto_update_status');
delete_site_transient('sknh_auto_update_status');

// Clear Cron Jobs
wp_clear_scheduled_hook('sknh_daily_cleanup');
wp_clear_scheduled_hook('sknh_weekly_report');

