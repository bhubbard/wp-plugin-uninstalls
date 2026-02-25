<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('geoflex_notices');
delete_site_option('geoflex_notices');
delete_option('geoflex');
delete_site_option('geoflex');

// Delete Transients
delete_transient('geoflex_list');
delete_site_transient('geoflex_list');

