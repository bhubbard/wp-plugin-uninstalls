<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lebdev_block_emails');
delete_site_option('lebdev_block_emails');
delete_option('lebdev_smtp_bypass');
delete_site_option('lebdev_smtp_bypass');
delete_option('lebdev_block_on_smtp');
delete_site_option('lebdev_block_on_smtp');
delete_option('wp_mail_smtp');
delete_site_option('wp_mail_smtp');
delete_option('swpsmtp_options');
delete_site_option('swpsmtp_options');
delete_option('wp_smtp_options');
delete_site_option('wp_smtp_options');
delete_option('postman_options');
delete_site_option('postman_options');
delete_option('fluentmail-settings');
delete_site_option('fluentmail-settings');

