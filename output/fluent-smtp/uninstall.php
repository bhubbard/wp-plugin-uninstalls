<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fluentmail-settings');
delete_site_option('fluentmail-settings');
delete_option('_fluentmail_last_generated_state');
delete_site_option('_fluentmail_last_generated_state');
delete_option('_fluentsmtp_sub_update');
delete_site_option('_fluentsmtp_sub_update');
delete_option('_fluentsmtp_dismissed_timestamp');
delete_site_option('_fluentsmtp_dismissed_timestamp');
delete_option('_fluentmail_last_email_digest');
delete_site_option('_fluentmail_last_email_digest');
delete_option('_fsmtp_last_notification_sent');
delete_site_option('_fsmtp_last_notification_sent');
delete_option('_fluentsmtp_intended_outlook_info');
delete_site_option('_fluentsmtp_intended_outlook_info');
delete_option('_fluent_smtp_notify_settings');
delete_site_option('_fluent_smtp_notify_settings');
delete_option('wp_mail_smtp');
delete_site_option('wp_mail_smtp');
delete_option('wp_mail_smtp_mail_key');
delete_site_option('wp_mail_smtp_mail_key');
delete_option('swpsmtp_options');
delete_site_option('swpsmtp_options');
delete_option('swpsmtp_pass_encrypted');
delete_site_option('swpsmtp_pass_encrypted');
delete_option('swpsmtp_enc_key');
delete_site_option('swpsmtp_enc_key');

// Clear Cron Jobs
wp_clear_scheduled_hook('fluentsmtp_renew_gmail_token');
wp_clear_scheduled_hook('fluentmail_do_daily_scheduled_tasks');

