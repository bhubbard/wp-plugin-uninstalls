<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('whereabouts_swarm_current_location');
delete_site_option('whereabouts_swarm_current_location');
delete_option('whereabouts_swarm_settings');
delete_site_option('whereabouts_swarm_settings');
delete_option('whereabouts_swarm_auth_code');
delete_site_option('whereabouts_swarm_auth_code');

// Clear Cron Jobs
wp_clear_scheduled_hook('whereabouts_swarm_fetch_location');

