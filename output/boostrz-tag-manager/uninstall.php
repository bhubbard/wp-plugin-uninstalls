<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('boostrz_api_token');
delete_site_option('boostrz_api_token');
delete_option('boostrz_api_token_expiry');
delete_site_option('boostrz_api_token_expiry');
delete_option('boostrz_current_website_selected');
delete_site_option('boostrz_current_website_selected');
delete_option('boostrz_option');
delete_site_option('boostrz_option');

