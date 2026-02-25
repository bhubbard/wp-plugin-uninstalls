<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('curl_shadow_height');
delete_site_option('curl_shadow_height');
delete_option('curl_shadow_opacity');
delete_site_option('curl_shadow_opacity');
delete_option('flat_shadow_height');
delete_site_option('flat_shadow_height');
delete_option('flat_shadow_opacity');
delete_site_option('flat_shadow_opacity');

