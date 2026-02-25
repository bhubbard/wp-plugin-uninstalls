<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('peentify_status');
delete_site_option('peentify_status');
delete_option('peentify_api_key');
delete_site_option('peentify_api_key');
delete_option('peentify_api_secret');
delete_site_option('peentify_api_secret');
delete_option('peentify_main_url');
delete_site_option('peentify_main_url');

