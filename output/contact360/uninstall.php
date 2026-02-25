<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('contact360-client-id');
delete_site_option('contact360-client-id');
delete_option('contact360-api-secret');
delete_site_option('contact360-api-secret');
delete_option('contact360-endpoint-url');
delete_site_option('contact360-endpoint-url');

