<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_mouring_db_version');
delete_site_option('simple_mouring_db_version');
delete_option('simple_mouring_speed');
delete_site_option('simple_mouring_speed');
delete_option('simple_mouring_interval');
delete_site_option('simple_mouring_interval');
delete_option('simple_mouring_type');
delete_site_option('simple_mouring_type');

