<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hras_enabled');
delete_site_option('hras_enabled');
delete_option('hras_api_key');
delete_site_option('hras_api_key');
delete_option('hras_allowed_domain');
delete_site_option('hras_allowed_domain');
delete_option('hras_whitelisted_routes');
delete_site_option('hras_whitelisted_routes');
delete_option('hras_headless_redirect');
delete_site_option('hras_headless_redirect');

