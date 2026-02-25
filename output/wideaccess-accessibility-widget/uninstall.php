<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wideaccess_db_version');
delete_site_option('wideaccess_db_version');
delete_option('wideaccess_license_key');
delete_site_option('wideaccess_license_key');

// Delete Transients
delete_transient('wideaccess_license_valid');
delete_site_transient('wideaccess_license_valid');
delete_transient('wideaccess_license_data');
delete_site_transient('wideaccess_license_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('wideaccess_daily_license_check');
wp_clear_scheduled_hook('wideaccess_recurring_license_check');
wp_clear_scheduled_hook('wideaccess`1_minute_license_check');
wp_clear_scheduled_hook('wideaccess_minute_license_check');

