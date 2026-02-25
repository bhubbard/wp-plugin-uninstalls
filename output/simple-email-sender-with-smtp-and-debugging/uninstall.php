<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_email_sender_smtp_host');
delete_site_option('simple_email_sender_smtp_host');
delete_option('simple_email_sender_smtp_port');
delete_site_option('simple_email_sender_smtp_port');
delete_option('simple_email_sender_smtp_username');
delete_site_option('simple_email_sender_smtp_username');
delete_option('simple_email_sender_smtp_password');
delete_site_option('simple_email_sender_smtp_password');
delete_option('simple_email_sender_smtp_encryption');
delete_site_option('simple_email_sender_smtp_encryption');
delete_option('simple_email_sender_from_email');
delete_site_option('simple_email_sender_from_email');
delete_option('simple_email_sender_debug_mode');
delete_site_option('simple_email_sender_debug_mode');

