<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('usdigitarget_google_maps_api_key');
delete_site_option('usdigitarget_google_maps_api_key');
delete_option('usdigitarget_google_maps_enabled');
delete_site_option('usdigitarget_google_maps_enabled');

