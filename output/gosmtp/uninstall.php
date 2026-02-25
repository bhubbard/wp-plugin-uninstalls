<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gosmtp_pro_version');
delete_site_option('gosmtp_pro_version');
delete_option('gosmtp_version');
delete_site_option('gosmtp_version');
delete_option('gosmtp_options');
delete_site_option('gosmtp_options');
delete_option('softaculous_plugin_update_notice');
delete_site_option('softaculous_plugin_update_notice');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('gosmtp_log_retention_cron');
wp_clear_scheduled_hook('gosmtp_weekly_email_reports_cron');

