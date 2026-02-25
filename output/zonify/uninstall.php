<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zonify_api_key');
delete_site_option('zonify_api_key');
delete_option('zonify_error');
delete_site_option('zonify_error');
delete_option('zonify_error_message');
delete_site_option('zonify_error_message');
delete_option('zonifyapp_api_key');
delete_site_option('zonifyapp_api_key');
delete_option('editorify_error');
delete_site_option('editorify_error');

