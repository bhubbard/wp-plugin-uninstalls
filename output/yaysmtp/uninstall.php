<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Shrief');
delete_site_option('Shrief');
delete_option('yaysmtp_settings_bk');
delete_site_option('yaysmtp_settings_bk');
delete_option('yaysmtp_settings');
delete_site_option('yaysmtp_settings');
delete_option('yaysmtp_email_log_settings_bk');
delete_site_option('yaysmtp_email_log_settings_bk');
delete_option('yaysmtp_email_log_settings');
delete_site_option('yaysmtp_email_log_settings');
delete_option('yaysmtp_reviewed');
delete_site_option('yaysmtp_reviewed');
delete_option('yaysmtp_debug');
delete_site_option('yaysmtp_debug');
delete_option('yaysmtp_debug_fallback');
delete_site_option('yaysmtp_debug_fallback');
delete_option('yaysmtp_imported_log_plugin_trace_settings');
delete_site_option('yaysmtp_imported_log_plugin_trace_settings');
delete_option('easy_wp_smtp');
delete_site_option('easy_wp_smtp');
delete_option('wp_mail_smtp');
delete_site_option('wp_mail_smtp');
delete_option('smtp_mailer_options');
delete_site_option('smtp_mailer_options');
delete_option('wp_smtp_options');
delete_site_option('wp_smtp_options');
delete_option('postman_options');
delete_site_option('postman_options');
delete_option('yay_smtp_version');
delete_site_option('yay_smtp_version');

// Delete Transients
delete_transient('YAYSMTP_ROOT');
delete_site_transient('YAYSMTP_ROOT');

// Clear Cron Jobs
wp_clear_scheduled_hook('yaysmtp_delete_email_log_schedule_hook');
wp_clear_scheduled_hook('yaysmtp_send_email_report_weekly_schedule_hook');
wp_clear_scheduled_hook('yaysmtp_send_email_report_monthly_schedule_hook');

