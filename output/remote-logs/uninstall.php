<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('remote_logs_settings');
delete_site_option('remote_logs_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('remote_logs_cleanup_expired_tokens');

