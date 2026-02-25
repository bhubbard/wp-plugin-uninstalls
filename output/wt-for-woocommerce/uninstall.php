<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('wt_pixel_bridge_api_key_cache_key');
delete_site_transient('wt_pixel_bridge_api_key_cache_key');

