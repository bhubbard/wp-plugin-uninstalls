<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bing_maps_for_wordpress');
delete_site_option('bing_maps_for_wordpress');

