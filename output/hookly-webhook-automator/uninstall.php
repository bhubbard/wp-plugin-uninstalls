<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hookly_version');
delete_site_option('hookly_version');
delete_option('hookly_db_version');
delete_site_option('hookly_db_version');
delete_option('hookly_enable_async');
delete_site_option('hookly_enable_async');
delete_option('hookly_log_retention_days');
delete_site_option('hookly_log_retention_days');
delete_option('hookly_default_timeout');
delete_site_option('hookly_default_timeout');

// Delete Transients
delete_transient('hookly_admin_notices');
delete_site_transient('hookly_admin_notices');

// Clear Cron Jobs
wp_clear_scheduled_hook('hookly_cleanup_logs');
wp_clear_scheduled_hook('hookly_dispatch_webhook');
wp_clear_scheduled_hook('hookly_retry_webhook');

