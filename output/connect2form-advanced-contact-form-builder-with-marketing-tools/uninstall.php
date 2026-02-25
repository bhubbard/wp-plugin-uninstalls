<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('connect2form_data_settings');
delete_site_option('connect2form_data_settings');
delete_option('connect2form_activated');
delete_site_option('connect2form_activated');
delete_option('connect2form_version');
delete_site_option('connect2form_version');
delete_option('connect2form_appearance_settings');
delete_site_option('connect2form_appearance_settings');
delete_option('connect2form_performance_settings');
delete_site_option('connect2form_performance_settings');
delete_option('connect2form_antispam_settings');
delete_site_option('connect2form_antispam_settings');
delete_option('connect2form_recaptcha_settings');
delete_site_option('connect2form_recaptcha_settings');
delete_option('connect2form_security_settings');
delete_site_option('connect2form_security_settings');
delete_option('wordpress_api_key');
delete_site_option('wordpress_api_key');
delete_option('connect2form_maintenance_settings');
delete_site_option('connect2form_maintenance_settings');

// Delete Transients
delete_transient('connect2form_last_queue_process');
delete_site_transient('connect2form_last_queue_process');
delete_transient('connect2form_last_frontend_queue_process');
delete_site_transient('connect2form_last_frontend_queue_process');

// Clear Cron Jobs
wp_clear_scheduled_hook('connect2form_process_emails');
wp_clear_scheduled_hook('connect2form_auto_delete_submissions');
wp_clear_scheduled_hook('connect2form_cleanup_email_queue');
wp_clear_scheduled_hook('connect2form_daily_cleanup');

