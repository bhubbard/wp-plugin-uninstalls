<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CST_SYS');
delete_site_option('CST_SYS');
delete_option('CST_USE');
delete_site_option('CST_USE');

