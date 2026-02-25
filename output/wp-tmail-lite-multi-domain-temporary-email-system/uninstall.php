<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_tmail_lite_imap_host');
delete_site_option('wp_tmail_lite_imap_host');
delete_option('wp_tmail_lite_imap_port');
delete_site_option('wp_tmail_lite_imap_port');
delete_option('wp_tmail_lite_imap_user');
delete_site_option('wp_tmail_lite_imap_user');
delete_option('wp_tmail_lite_imap_pass');
delete_site_option('wp_tmail_lite_imap_pass');
delete_option('wp_tmail_lite_imap_domains');
delete_site_option('wp_tmail_lite_imap_domains');
delete_option('wp_tmail_lite_enable_ssl');
delete_site_option('wp_tmail_lite_enable_ssl');

