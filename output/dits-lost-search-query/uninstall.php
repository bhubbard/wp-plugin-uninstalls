<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lsq_notifications_enabled');
delete_site_option('lsq_notifications_enabled');
delete_option('lsq_threshold');
delete_site_option('lsq_threshold');
delete_option('lsq_notify_email');
delete_site_option('lsq_notify_email');
delete_option('lsq_send_immediately');
delete_site_option('lsq_send_immediately');
delete_option('lsq_send_by_cron');
delete_site_option('lsq_send_by_cron');
delete_option('lsq_cron_time');
delete_site_option('lsq_cron_time');
delete_option('lsq_cron_frequency');
delete_site_option('lsq_cron_frequency');
delete_option('dits-lost-search-query_general');
delete_site_option('dits-lost-search-query_general');

// Clear Cron Jobs
wp_clear_scheduled_hook('dits_lsq_send_notifications');

