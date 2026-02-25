<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cb_mail_sender_email_id');
delete_site_option('cb_mail_sender_email_id');
delete_option('cb_mail_sender_id');
delete_site_option('cb_mail_sender_id');
delete_option('wp_mail_smtp_source');
delete_site_option('wp_mail_smtp_source');
delete_option('wp_mail_smtp_activation_prevent_redirect');
delete_site_option('wp_mail_smtp_activation_prevent_redirect');

