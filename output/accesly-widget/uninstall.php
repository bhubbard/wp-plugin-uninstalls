<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('accesly_settings');
delete_site_option('accesly_settings');
delete_option('accesly_license_key');
delete_site_option('accesly_license_key');
delete_option('accesly_license_status');
delete_site_option('accesly_license_status');
delete_option('accesly_last_license_check');
delete_site_option('accesly_last_license_check');

// Delete Transients
delete_transient('accesly_license_message');
delete_site_transient('accesly_license_message');

// Clear Cron Jobs
wp_clear_scheduled_hook('accesly_daily_license_check_retry');
wp_clear_scheduled_hook('accesly_daily_license_check');

