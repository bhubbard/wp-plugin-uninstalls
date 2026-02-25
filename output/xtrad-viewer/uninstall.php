<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xtrad_viewer_db_version');
delete_site_option('xtrad_viewer_db_version');
delete_option('xtrad_viewer_lib_version');
delete_site_option('xtrad_viewer_lib_version');

