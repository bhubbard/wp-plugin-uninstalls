<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('frontend_farts');
delete_site_option('frontend_farts');
delete_option('backend_farts');
delete_site_option('backend_farts');
delete_option('login_farts');
delete_site_option('login_farts');

