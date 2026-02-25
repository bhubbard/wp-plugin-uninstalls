<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin-security-scanner');
delete_site_option('plugin-security-scanner');

// Clear Cron Jobs
wp_clear_scheduled_hook('plugin_security_scanner_daily_event_hook');

