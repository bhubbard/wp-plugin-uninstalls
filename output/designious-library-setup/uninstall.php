<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_designious_library_version');
delete_site_option('_designious_library_version');

// Delete Transients
delete_transient('_designious_library_addon_latest_version');
delete_site_transient('_designious_library_addon_latest_version');

