<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('editorify_api_key');
delete_site_option('editorify_api_key');
delete_option('editorify_error');
delete_site_option('editorify_error');
delete_option('editorify_error_message');
delete_site_option('editorify_error_message');
delete_option('editorify_check');
delete_site_option('editorify_check');

