<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oqey_header_db_version');
delete_site_option('oqey_header_db_version');
delete_option('qgal_db_version');
delete_site_option('qgal_db_version');

