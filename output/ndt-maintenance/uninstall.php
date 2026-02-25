<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('NDTAN_MAINTENANCE_options');
delete_site_option('NDTAN_MAINTENANCE_options');
delete_option('ndt_maintenance_options');
delete_site_option('ndt_maintenance_options');

// Delete Transients
delete_transient('ndt_maintenance_themes');
delete_site_transient('ndt_maintenance_themes');

