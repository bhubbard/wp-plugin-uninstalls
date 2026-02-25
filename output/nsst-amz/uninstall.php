<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nsst_db_version');
delete_site_option('nsst_db_version');
delete_option('my_nsst_option_name');
delete_site_option('my_nsst_option_name');

