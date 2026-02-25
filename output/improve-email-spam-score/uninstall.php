<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emailfix_from_name');
delete_site_option('emailfix_from_name');
delete_option('emailfix_email');
delete_site_option('emailfix_email');

