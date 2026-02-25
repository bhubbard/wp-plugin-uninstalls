<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('NDTAN_DUPLICATE_options');
delete_site_option('NDTAN_DUPLICATE_options');
delete_option('ndt_duplicate_options');
delete_site_option('ndt_duplicate_options');

