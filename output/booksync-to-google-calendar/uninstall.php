<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bsgcal_tokens');
delete_site_option('bsgcal_tokens');
delete_option('bsgcal_settings');
delete_site_option('bsgcal_settings');
delete_option('bsgcal_version');
delete_site_option('bsgcal_version');

// Delete Transients
delete_transient('bsgcal_oauth_state');
delete_site_transient('bsgcal_oauth_state');
delete_transient('bsgcal_calendar_cache');
delete_site_transient('bsgcal_calendar_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('bsgcal_cleanup_expired_tokens');
wp_clear_scheduled_hook('bsgcal_sync_calendar_events');

