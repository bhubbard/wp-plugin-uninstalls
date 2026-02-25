<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abb_user_agent');
delete_site_option('abb_user_agent');
delete_option('abb_error_code');
delete_site_option('abb_error_code');

