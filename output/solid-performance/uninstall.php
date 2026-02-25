<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stellarwp_telemetry');
delete_site_option('stellarwp_telemetry');
delete_option('stellarwp_telemetry_last_send');
delete_site_option('stellarwp_telemetry_last_send');

