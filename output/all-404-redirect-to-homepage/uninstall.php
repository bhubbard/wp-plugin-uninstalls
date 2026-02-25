<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('p404_redirect_options');
delete_site_option('p404_redirect_options');
delete_option('P404_email_update');
delete_site_option('P404_email_update');
delete_option('p404_migration_status2');
delete_site_option('p404_migration_status2');
delete_option('P404REDIRECT_upgrade_msg');
delete_site_option('P404REDIRECT_upgrade_msg');
delete_option('P404_alert_msg');
delete_site_option('P404_alert_msg');

// Clear Cron Jobs
wp_clear_scheduled_hook('p404_daily_email_summary');
wp_clear_scheduled_hook('p404_weekly_email_summary');
wp_clear_scheduled_hook('p404_monthly_email_summary');
wp_clear_scheduled_hook('p404_send_scheduled_email');

