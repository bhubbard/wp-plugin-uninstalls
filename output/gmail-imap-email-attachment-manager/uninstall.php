<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmail_password');
delete_site_option('gmail_password');
delete_option('gmail_username');
delete_site_option('gmail_username');

