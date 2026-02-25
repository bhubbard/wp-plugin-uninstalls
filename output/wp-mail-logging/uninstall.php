<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_mail_logging_activated_time');
delete_site_option('wp_mail_logging_activated_time');
delete_option('wp_mail_logging_user_feedback_notice');
delete_site_option('wp_mail_logging_user_feedback_notice');
delete_option('wp_mail_logging_db_version');
delete_site_option('wp_mail_logging_db_version');
delete_option('wpml_settings');
delete_site_option('wpml_settings');
delete_option('wp_mail_smtp_source');
delete_site_option('wp_mail_smtp_source');
delete_option('wp_mail_smtp_activation_prevent_redirect');
delete_site_option('wp_mail_smtp_activation_prevent_redirect');

