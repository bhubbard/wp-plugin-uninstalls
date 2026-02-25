<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vjacb_version');
delete_site_option('vjacb_version');
delete_option('vjacb_settings');
delete_site_option('vjacb_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('vjacb_cleanup_sessions');

