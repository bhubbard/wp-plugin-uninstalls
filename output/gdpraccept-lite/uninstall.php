<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gdpraccept_db_version');
delete_site_option('gdpraccept_db_version');
delete_option('gdpraccept');
delete_site_option('gdpraccept');

