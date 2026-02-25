<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pdesk_settings');
delete_site_option('pdesk_settings');
delete_option('pdesk_manual_cookies');
delete_site_option('pdesk_manual_cookies');
delete_option('pdesk_scanned_cookies');
delete_site_option('pdesk_scanned_cookies');

// Delete Transients
delete_transient('pdesk_consent_stats');
delete_site_transient('pdesk_consent_stats');
delete_transient('pdesk_cookie_scan_results');
delete_site_transient('pdesk_cookie_scan_results');

// Clear Cron Jobs
wp_clear_scheduled_hook('pdesk_cleanup_usage_limits');

