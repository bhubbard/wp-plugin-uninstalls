<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('channelize');
delete_site_option('channelize');
delete_option('channelize_migration');
delete_site_option('channelize_migration');
delete_option('channelize_userrole');
delete_site_option('channelize_userrole');

