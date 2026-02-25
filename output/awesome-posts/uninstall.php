<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('arifix_ap_db_version');
delete_site_option('arifix_ap_db_version');
delete_option('arifix_ap_grid_settings');
delete_site_option('arifix_ap_grid_settings');

