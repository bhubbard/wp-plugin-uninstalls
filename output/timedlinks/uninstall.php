<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pick_settings_latest_version');
delete_site_option('pick_settings_latest_version');
delete_option('pick_settings_version');
delete_site_option('pick_settings_version');
delete_option('pick_settings_url');
delete_site_option('pick_settings_url');
delete_option('twp_api_key');
delete_site_option('twp_api_key');

