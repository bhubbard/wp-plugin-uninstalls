<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emp_container');
delete_site_option('emp_container');
delete_option('emp_activate');
delete_site_option('emp_activate');
delete_option('emp_page');
delete_site_option('emp_page');

