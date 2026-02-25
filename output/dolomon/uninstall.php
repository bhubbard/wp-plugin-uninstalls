<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dolomon-url');
delete_site_option('dolomon-url');
delete_option('dolomon-app_id');
delete_site_option('dolomon-app_id');
delete_option('dolomon-app_secret');
delete_site_option('dolomon-app_secret');
delete_option('dolomon-cache_expiration');
delete_site_option('dolomon-cache_expiration');

// Delete Transients
delete_transient('dolomon_data');
delete_site_transient('dolomon_data');

