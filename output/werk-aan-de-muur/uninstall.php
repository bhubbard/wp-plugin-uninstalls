<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wadm_api_key');
delete_site_option('wadm_api_key');
delete_option('wadm_artist_id');
delete_site_option('wadm_artist_id');

