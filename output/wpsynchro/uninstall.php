<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsynchro_healthcheck_timestamp');
delete_site_option('wpsynchro_healthcheck_timestamp');
delete_option('wpsynchro_dbversion');
delete_site_option('wpsynchro_dbversion');
delete_option('wpsynchro_filepopulation_current');
delete_site_option('wpsynchro_filepopulation_current');
delete_option('wpsynchro_filepopulation_current_download_id');
delete_site_option('wpsynchro_filepopulation_current_download_id');
delete_option('wpsynchro_filepopulation_problems');
delete_site_option('wpsynchro_filepopulation_problems');
delete_option('wpsynchro_success_count');
delete_site_option('wpsynchro_success_count');
delete_option('wpsynchro_sync_logs');
delete_site_option('wpsynchro_sync_logs');
delete_option('wpsynchro_migrations');
delete_site_option('wpsynchro_migrations');
delete_option('wpsynchro_dismiss_review_request');
delete_site_option('wpsynchro_dismiss_review_request');
delete_option('wpsynchro_accesskey');
delete_site_option('wpsynchro_accesskey');
delete_option('wpsynchro_license_key');
delete_site_option('wpsynchro_license_key');
delete_option('wpsynchro_migration_last_run_timestamp');
delete_site_option('wpsynchro_migration_last_run_timestamp');
delete_option('wpsynchro_usage_reporting_selection');
delete_site_option('wpsynchro_usage_reporting_selection');
delete_option('wpsynchro_setup_basic_auth');
delete_site_option('wpsynchro_setup_basic_auth');
delete_option('wpsynchro_slow_hosting_optimize');
delete_site_option('wpsynchro_slow_hosting_optimize');
delete_option('wpsynchro_muplugin_enabled');
delete_site_option('wpsynchro_muplugin_enabled');
delete_option('wpsynchro_allowed_methods');
delete_site_option('wpsynchro_allowed_methods');
delete_option('wpsynchro_ip_security_enabled');
delete_site_option('wpsynchro_ip_security_enabled');
delete_option('wpsynchro_debuglogging_enabled');
delete_site_option('wpsynchro_debuglogging_enabled');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpsynchro_cron_scheduled_migrations');

