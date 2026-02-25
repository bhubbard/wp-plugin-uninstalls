<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lana_email_logger_cleanup_by_amount');
delete_site_option('lana_email_logger_cleanup_by_amount');
delete_option('lana_email_logger_cleanup_amount');
delete_site_option('lana_email_logger_cleanup_amount');
delete_option('lana_email_logger_cleanup_by_time');
delete_site_option('lana_email_logger_cleanup_by_time');
delete_option('lana_email_logger_cleanup_time');
delete_site_option('lana_email_logger_cleanup_time');

// Clear Cron Jobs
wp_clear_scheduled_hook('lana_email_logger_cleanup_by_amount');
wp_clear_scheduled_hook('lana_email_logger_cleanup_by_time');

