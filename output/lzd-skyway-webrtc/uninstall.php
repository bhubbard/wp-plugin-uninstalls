<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lzd_skyway_webrtc_api_key');
delete_site_option('lzd_skyway_webrtc_api_key');
delete_option('lzd_skyway_webrtc_enable_external_user');
delete_site_option('lzd_skyway_webrtc_enable_external_user');

