<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dapii_api_url');
delete_site_option('dapii_api_url');
delete_option('dapii_request_type');
delete_site_option('dapii_request_type');
delete_option('dapii_api_params');
delete_site_option('dapii_api_params');

