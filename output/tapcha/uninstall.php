<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tapcha-site-key');
delete_site_option('tapcha-site-key');
delete_option('tapcha-admin-key');
delete_site_option('tapcha-admin-key');

