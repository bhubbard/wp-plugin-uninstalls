<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('csh_ai_license_robots_signature');
delete_site_option('csh_ai_license_robots_signature');

// Clear Cron Jobs
wp_clear_scheduled_hook('csh_ai_refresh_token_event');

