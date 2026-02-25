<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nelio_maps_api_key_option');
delete_site_option('nelio_maps_api_key_option');

