<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ghl_clnt_id');
delete_site_option('ghl_clnt_id');
delete_option('ghl_clnt_scrt');
delete_site_option('ghl_clnt_scrt');
delete_option('ghl_location_connected');
delete_site_option('ghl_location_connected');

