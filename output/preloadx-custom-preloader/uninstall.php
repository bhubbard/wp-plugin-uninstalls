<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('preloadx_selected');
delete_site_option('preloadx_selected');
delete_option('preloadx_color');
delete_site_option('preloadx_color');
delete_option('preloadx_bgcolor');
delete_site_option('preloadx_bgcolor');
delete_option('preloadx_bggradient');
delete_site_option('preloadx_bggradient');
delete_option('preloadx_bgimage');
delete_site_option('preloadx_bgimage');
delete_option('preloadx_bgtype');
delete_site_option('preloadx_bgtype');

