<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('importify_api_key');
delete_site_option('importify_api_key');
delete_option('importify_error');
delete_site_option('importify_error');
delete_option('importify_error_message');
delete_site_option('importify_error_message');
delete_option('importify_check');
delete_site_option('importify_check');

