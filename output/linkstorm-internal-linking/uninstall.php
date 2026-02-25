<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('LINKSTORM_API_KEY');
delete_site_option('LINKSTORM_API_KEY');
delete_option('LINKSTORM_WEBSITE_ID');
delete_site_option('LINKSTORM_WEBSITE_ID');
delete_option('LINKSTORM_PROJECT_ID');
delete_site_option('LINKSTORM_PROJECT_ID');
delete_option('LINKSTORM_ENABLE_SCRIPT');
delete_site_option('LINKSTORM_ENABLE_SCRIPT');
delete_option('LINKSTORM_SCRIPT_VERIFIED');
delete_site_option('LINKSTORM_SCRIPT_VERIFIED');
delete_option('LINKSTORM_SHOW_WELCOME');
delete_site_option('LINKSTORM_SHOW_WELCOME');

