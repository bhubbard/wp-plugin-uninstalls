<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpfrom_mail_sender_email_id');
delete_site_option('wpfrom_mail_sender_email_id');
delete_option('wpfrom_custom_sender_id');
delete_site_option('wpfrom_custom_sender_id');
delete_option('wpfrom_mail_sender_name_id');
delete_site_option('wpfrom_mail_sender_name_id');
delete_option('wpfrom_admin_verify_email_id');
delete_site_option('wpfrom_admin_verify_email_id');
delete_option('wpfrom_pwd_admin_email_id');
delete_site_option('wpfrom_pwd_admin_email_id');
delete_option('wpfrom_pwd_user_email_id');
delete_site_option('wpfrom_pwd_user_email_id');
delete_option('wpfrom_new_user_admin_email_id');
delete_site_option('wpfrom_new_user_admin_email_id');
delete_option('wpfrom_autoupdate_core_email_id');
delete_site_option('wpfrom_autoupdate_core_email_id');
delete_option('wpfrom_autoupdate_plugin_email_id');
delete_site_option('wpfrom_autoupdate_plugin_email_id');
delete_option('wpfrom_autoupdate_theme_email_id');
delete_site_option('wpfrom_autoupdate_theme_email_id');
delete_option('wpfrom_mail_sender_id');
delete_site_option('wpfrom_mail_sender_id');
delete_option('wpfrom_kill_email_id');
delete_site_option('wpfrom_kill_email_id');

