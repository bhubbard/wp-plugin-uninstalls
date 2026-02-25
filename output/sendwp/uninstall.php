<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sendwp_client_secret');
delete_site_option('sendwp_client_secret');
delete_option('sendwp_client_connected');
delete_site_option('sendwp_client_connected');
delete_option('sendwp_forwarding_enabled');
delete_site_option('sendwp_forwarding_enabled');
delete_option('_transient_timeout_sendwp_pulse_monitor');
delete_site_option('_transient_timeout_sendwp_pulse_monitor');
delete_option('_transient_sendwp_pulse_monitor');
delete_site_option('_transient_sendwp_pulse_monitor');

// Delete Transients
delete_transient('sendwp_pulse_monitor');
delete_site_transient('sendwp_pulse_monitor');

// Clear Cron Jobs
wp_clear_scheduled_hook('sendwp_heartbeat');

