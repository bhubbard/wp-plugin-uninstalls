<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailmoo_smtp_host');
delete_site_option('mailmoo_smtp_host');
delete_option('mailmoo_smtp_port');
delete_site_option('mailmoo_smtp_port');
delete_option('mailmoo_smtp_auth');
delete_site_option('mailmoo_smtp_auth');
delete_option('mailmoo_smtp_username');
delete_site_option('mailmoo_smtp_username');
delete_option('mailmoo_smtp_password');
delete_site_option('mailmoo_smtp_password');
delete_option('mailmoo_smtp_encryption');
delete_site_option('mailmoo_smtp_encryption');
delete_option('mailmoo_from_email');
delete_site_option('mailmoo_from_email');
delete_option('mailmoo_from_name');
delete_site_option('mailmoo_from_name');
delete_option('mailmoo_reply_to_email');
delete_site_option('mailmoo_reply_to_email');
delete_option('mailmoo_reply_to_name');
delete_site_option('mailmoo_reply_to_name');
delete_option('mailmoo_enable_logging');
delete_site_option('mailmoo_enable_logging');

