<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ll_gmaps_settings');
delete_site_option('ll_gmaps_settings');
delete_option('llgmaps_version');
delete_site_option('llgmaps_version');
delete_option('llgmaps_date_install');
delete_site_option('llgmaps_date_install');
delete_option('ll_gmaps_version');
delete_site_option('ll_gmaps_version');

