<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stream3s_client_id');
delete_site_option('stream3s_client_id');
delete_option('stream3s_secret_key');
delete_site_option('stream3s_secret_key');

