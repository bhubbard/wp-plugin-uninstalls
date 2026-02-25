<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('email_list');
delete_site_option('email_list');
delete_option('default_language');
delete_site_option('default_language');

