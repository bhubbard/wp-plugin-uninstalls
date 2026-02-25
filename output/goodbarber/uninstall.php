<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gb_json_api_controllers');
delete_site_option('gb_json_api_controllers');
delete_option('gb_api_key');
delete_site_option('gb_api_key');
delete_option('gb_json_api_base');
delete_site_option('gb_json_api_base');
delete_option('is_secure_mode_enabled');
delete_site_option('is_secure_mode_enabled');
delete_option('is_comments_enabled');
delete_site_option('is_comments_enabled');

