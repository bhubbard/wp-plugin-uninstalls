<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('popify_api_key');
delete_site_option('popify_api_key');
delete_option('popify_error');
delete_site_option('popify_error');
delete_option('popify_error_message');
delete_site_option('popify_error_message');

