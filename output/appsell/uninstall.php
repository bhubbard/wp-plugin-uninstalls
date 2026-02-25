<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('appsell_api_key');
delete_site_option('appsell_api_key');
delete_option('appsell_error');
delete_site_option('appsell_error');
delete_option('appsell_error_message');
delete_site_option('appsell_error_message');

