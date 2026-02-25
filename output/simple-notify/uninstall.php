<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simpno_enable_emails_new_user_register');
delete_site_option('simpno_enable_emails_new_user_register');
delete_option('simpno_email_template_new_user_register');
delete_site_option('simpno_email_template_new_user_register');
delete_option('simpno_enable_emails_new_post_publish');
delete_site_option('simpno_enable_emails_new_post_publish');
delete_option('simpno_email_template_new_post_publish');
delete_site_option('simpno_email_template_new_post_publish');
delete_option('notification_enable_emails_new_user_register');
delete_site_option('notification_enable_emails_new_user_register');
delete_option('notification_email_template_new_user_register');
delete_site_option('notification_email_template_new_user_register');
delete_option('notification_enable_emails_new_post_publish');
delete_site_option('notification_enable_emails_new_post_publish');
delete_option('notification_email_template_new_post_publish');
delete_site_option('notification_email_template_new_post_publish');

