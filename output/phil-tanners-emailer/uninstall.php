<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppt_emailer_version');
delete_site_option('wppt_emailer_version');
delete_option('wppt_emailer_smtpdebug');
delete_site_option('wppt_emailer_smtpdebug');
delete_option('wppt_emailer_smtp_host');
delete_site_option('wppt_emailer_smtp_host');
delete_option('wppt_emailer_smtp_auth');
delete_site_option('wppt_emailer_smtp_auth');
delete_option('wppt_emailer_port');
delete_site_option('wppt_emailer_port');
delete_option('wppt_emailer_username');
delete_site_option('wppt_emailer_username');
delete_option('wppt_emailer_password');
delete_site_option('wppt_emailer_password');
delete_option('wppt_emailer_smtpsecure');
delete_site_option('wppt_emailer_smtpsecure');

