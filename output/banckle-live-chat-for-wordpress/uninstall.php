<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('BLCScript');
delete_site_option('BLCScript');
delete_option('blcLocation');
delete_site_option('blcLocation');
delete_option('loginId');
delete_site_option('loginId');
delete_option('password');
delete_site_option('password');

