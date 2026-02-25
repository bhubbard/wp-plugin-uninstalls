<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ptest_db_version');
delete_site_option('ptest_db_version');
delete_option('ptest_options');
delete_site_option('ptest_options');

