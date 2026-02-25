<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('etracker_settings');
delete_site_option('etracker_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('etracker_db_version');
delete_site_option('etracker_db_version');

// Delete Transients
delete_transient('etracker_notice_enable_integrated_reporting');
delete_site_transient('etracker_notice_enable_integrated_reporting');
delete_transient('etracker_customer_polling');
delete_site_transient('etracker_customer_polling');

// Clear Cron Jobs
wp_clear_scheduled_hook('etracker_cron_fetch_reports');
wp_clear_scheduled_hook('etracker_cron_cleanup_logging');

