<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('deedpay_settings');
delete_site_option('deedpay_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('deedpay_daily_cleanup');

