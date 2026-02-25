<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('comfortsmtp_version');
delete_site_option('comfortsmtp_version');
delete_option('comfortsmtp_testmsg');
delete_site_option('comfortsmtp_testmsg');
delete_option('comfortsmtp_dashboard_widget');
delete_site_option('comfortsmtp_dashboard_widget');

// Delete Transients
delete_transient('comfortsmtp_upgraded_notice');
delete_site_transient('comfortsmtp_upgraded_notice');
delete_transient('comfortsmtp_activated_notice');
delete_site_transient('comfortsmtp_activated_notice');
delete_transient('comfortsmtp_resend_filter_mail_content_type');
delete_site_transient('comfortsmtp_resend_filter_mail_content_type');

// Clear Cron Jobs
wp_clear_scheduled_hook('cbxwpemaillogger_daily_event');

