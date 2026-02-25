<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acm_paused_events');
delete_site_option('acm_paused_events');
delete_option('acm_schedules');
delete_site_option('acm_schedules');
delete_option('acm_server_settings');
delete_site_option('acm_server_settings');

