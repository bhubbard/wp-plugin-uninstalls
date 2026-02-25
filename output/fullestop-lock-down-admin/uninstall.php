<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fullestop_hide_admin');
delete_site_option('fullestop_hide_admin');
delete_option('fullestop_login_name');
delete_site_option('fullestop_login_name');

