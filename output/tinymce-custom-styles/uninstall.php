<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tcs_addstyledrop');
delete_site_option('tcs_addstyledrop');
delete_option('tcs_locstyle');
delete_site_option('tcs_locstyle');
delete_option('tcs_cuslink');
delete_site_option('tcs_cuslink');
delete_option('tcs_submenu');
delete_site_option('tcs_submenu');
delete_option('tcs_nomerge');
delete_site_option('tcs_nomerge');

