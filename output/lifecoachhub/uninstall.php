<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lifecoachhub_api_key');
delete_site_option('lifecoachhub_api_key');
delete_option('lifecoachhub_connection_status');
delete_site_option('lifecoachhub_connection_status');
delete_option('lifecoachhub_connected_at');
delete_site_option('lifecoachhub_connected_at');

