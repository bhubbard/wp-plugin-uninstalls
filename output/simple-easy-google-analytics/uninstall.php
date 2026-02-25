<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sega_google_client_id');
delete_site_option('sega_google_client_id');
delete_option('sega_google_client_code');
delete_site_option('sega_google_client_code');

