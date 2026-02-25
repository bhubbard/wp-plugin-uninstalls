<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('infusionsoft_sdk_app_name');
delete_site_option('infusionsoft_sdk_app_name');
delete_option('infusionsoft_sdk_api_key');
delete_site_option('infusionsoft_sdk_api_key');

