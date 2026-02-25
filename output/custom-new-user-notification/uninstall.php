<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cnun_user_mail_content');
delete_site_option('cnun_user_mail_content');
delete_option('cnun_admin_mail_content');
delete_site_option('cnun_admin_mail_content');
delete_option('cnun_user_mail_subject');
delete_site_option('cnun_user_mail_subject');
delete_option('cnun_admin_mail_subject');
delete_site_option('cnun_admin_mail_subject');
delete_option('cnun_user_mail_sender_mail');
delete_site_option('cnun_user_mail_sender_mail');
delete_option('cnun_admin_mail_sender_mail');
delete_site_option('cnun_admin_mail_sender_mail');
delete_option('cnun_user_mail_sender_name');
delete_site_option('cnun_user_mail_sender_name');
delete_option('cnun_admin_mail_sender_name');
delete_site_option('cnun_admin_mail_sender_name');

