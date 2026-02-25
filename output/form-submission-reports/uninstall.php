<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fsrp_reports_days');
delete_site_option('fsrp_reports_days');
delete_option('fsrp_reports_schedule');
delete_site_option('fsrp_reports_schedule');
delete_option('fsrp_reports_admin_email');
delete_site_option('fsrp_reports_admin_email');

// Delete Transients
delete_transient('fsrp_activation_error');
delete_site_transient('fsrp_activation_error');
delete_transient('fsrp_reports_settings_saved');
delete_site_transient('fsrp_reports_settings_saved');

// Clear Cron Jobs
wp_clear_scheduled_hook('fsrp_submission_report');

