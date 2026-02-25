<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myplug_version');
delete_site_option('myplug_version');
delete_option('hydravid_site');
delete_site_option('hydravid_site');
delete_option('username');
delete_site_option('username');
delete_option('categories');
delete_site_option('categories');

