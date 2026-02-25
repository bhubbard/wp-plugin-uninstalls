<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ga4inserter_measurement_id');
delete_site_option('ga4inserter_measurement_id');

