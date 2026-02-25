<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lt_scr_lambdatest_db_version');
delete_site_option('lt_scr_lambdatest_db_version');

