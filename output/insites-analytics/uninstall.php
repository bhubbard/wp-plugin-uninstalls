<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uuid');
delete_site_option('uuid');
delete_option('logged_in');
delete_site_option('logged_in');
delete_option('admin_logged_in');
delete_site_option('admin_logged_in');

