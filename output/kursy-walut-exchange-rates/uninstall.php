<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kw_db_version');
delete_site_option('kw_db_version');
delete_option('kp_db_version');
delete_site_option('kp_db_version');

