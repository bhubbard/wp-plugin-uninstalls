<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_client_reports_email_footer');
delete_site_option('wp_client_reports_email_footer');
delete_option('wp_client_reports_version');
delete_site_option('wp_client_reports_version');
delete_option('wp_client_reports_enable_updates');
delete_site_option('wp_client_reports_enable_updates');
delete_option('wp_client_reports_enable_content_stats');
delete_site_option('wp_client_reports_enable_content_stats');
delete_option('wp_client_reports_default_title');
delete_site_option('wp_client_reports_default_title');
delete_option('wp_client_reports_default_email');
delete_site_option('wp_client_reports_default_email');
delete_option('wp_client_reports_default_intro');
delete_site_option('wp_client_reports_default_intro');
delete_option('wp_client_reports_email_from');
delete_site_option('wp_client_reports_email_from');
delete_option('wp_client_reports_name_from');
delete_site_option('wp_client_reports_name_from');
delete_option('wp_client_reports_email_reply');
delete_site_option('wp_client_reports_email_reply');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_client_reports_check_for_updates_daily');

