<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nsc3ppm_notify_frequency');
delete_site_option('nsc3ppm_notify_frequency');
delete_option('nsc3ppm_new_hostnames');
delete_site_option('nsc3ppm_new_hostnames');
delete_option('nsc3ppm_notify_email');
delete_site_option('nsc3ppm_notify_email');
delete_option('nsc3ppm_notified_hostnames');
delete_site_option('nsc3ppm_notified_hostnames');
delete_option('nsc3ppm_data_retention');
delete_site_option('nsc3ppm_data_retention');
delete_option('nsc3ppm_monitoring_enabled');
delete_site_option('nsc3ppm_monitoring_enabled');
delete_option('nsc3ppm_enable_csp_rules');
delete_site_option('nsc3ppm_enable_csp_rules');
delete_option('nsc3ppm_sample_percentage');
delete_site_option('nsc3ppm_sample_percentage');
delete_option('nsc3ppm_allowed_hostnames');
delete_site_option('nsc3ppm_allowed_hostnames');

// Clear Cron Jobs
wp_clear_scheduled_hook('nsc3ppm_daily_cleanup');
wp_clear_scheduled_hook('nsc3ppm_daily_domain_notification');

