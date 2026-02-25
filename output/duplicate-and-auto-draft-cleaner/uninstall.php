<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dupadc_settings');
delete_site_option('dupadc_settings');
delete_option('dupadc_cleanup_activity_log');
delete_site_option('dupadc_cleanup_activity_log');

// Delete Transients
delete_transient('dupadc_admin_notice');
delete_site_transient('dupadc_admin_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('dupadc_auto_draft_cleanup_event');
wp_clear_scheduled_hook('dupadc_duplicate_cleanup_event');

