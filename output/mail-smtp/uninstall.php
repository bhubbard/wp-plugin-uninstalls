<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smtp_host');
delete_site_option('smtp_host');
delete_option('smtp_port');
delete_site_option('smtp_port');
delete_option('smtp_username');
delete_site_option('smtp_username');
delete_option('smtp_password');
delete_site_option('smtp_password');
delete_option('smtp_from');
delete_site_option('smtp_from');
delete_option('smtp_fromname');
delete_site_option('smtp_fromname');
delete_option('smtp_replyto');
delete_site_option('smtp_replyto');
delete_option('smtp_ssl');
delete_site_option('smtp_ssl');

