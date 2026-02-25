<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cabGrid_Prices');
delete_site_option('cabGrid_Prices');
delete_option('cabGrid_Places');
delete_site_option('cabGrid_Places');
delete_option('cabGrid_Options');
delete_site_option('cabGrid_Options');

