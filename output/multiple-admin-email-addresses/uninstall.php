<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adminhash');
delete_site_option('adminhash');
delete_option('new_admin_email');
delete_site_option('new_admin_email');
delete_option('multiple_admin_emails');
delete_site_option('multiple_admin_emails');

