<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sbg_sidebars');
delete_site_option('sbg_sidebars');

// Delete Transients
delete_transient('wpcs_imported_sbg_sidebars');
delete_site_transient('wpcs_imported_sbg_sidebars');

