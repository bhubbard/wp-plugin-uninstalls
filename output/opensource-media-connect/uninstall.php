<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('opensource_media_connect_client_id');
delete_site_option('opensource_media_connect_client_id');
delete_option('opensource_media_connect_access_token');
delete_site_option('opensource_media_connect_access_token');
delete_option('opensource_media_connect_client_secret');
delete_site_option('opensource_media_connect_client_secret');

// Delete Transients
delete_transient('opensource_media_connect_access_token');
delete_site_transient('opensource_media_connect_access_token');

