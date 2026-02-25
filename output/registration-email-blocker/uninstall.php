<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('REGIEMBL_settings');
delete_site_option('REGIEMBL_settings');
delete_option('REGIEMBL_version');
delete_site_option('REGIEMBL_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('REGIEMBL_daily_check');
wp_clear_scheduled_hook('REGIEMBL_weekly_cleanup');
wp_clear_scheduled_hook('REGIEMBL_monthly_report');

