<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('DIANA_GREENCONNECT_client_id');
delete_site_option('DIANA_GREENCONNECT_client_id');
delete_option('DIANA_GREENCONNECT_client_secret');
delete_site_option('DIANA_GREENCONNECT_client_secret');

// Delete Transients
delete_transient('DIANA_GREENCONNECT_api_token');
delete_site_transient('DIANA_GREENCONNECT_api_token');

