<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('voxpow_tracker_id');
delete_site_option('voxpow_tracker_id');
delete_option('voxpow_api_token');
delete_site_option('voxpow_api_token');
delete_option('voxpow_commands_js_file');
delete_site_option('voxpow_commands_js_file');
delete_option('voxpow_api_endpoint');
delete_site_option('voxpow_api_endpoint');

