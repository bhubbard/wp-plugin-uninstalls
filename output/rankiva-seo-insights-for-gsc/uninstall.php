<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scso_gsc_property');
delete_site_option('scso_gsc_property');
delete_option('scso_sync_state');
delete_site_option('scso_sync_state');
delete_option('scso_gsc_binding');
delete_site_option('scso_gsc_binding');
delete_option('scso_gsc_account_id');
delete_site_option('scso_gsc_account_id');
delete_option('scso_use_proxy');
delete_site_option('scso_use_proxy');
delete_option('scso_oauth_client_id');
delete_site_option('scso_oauth_client_id');
delete_option('scso_oauth_client_secret');
delete_site_option('scso_oauth_client_secret');
delete_option('scso_gsc_token');
delete_site_option('scso_gsc_token');
delete_option('scso_gsc_account_email');
delete_site_option('scso_gsc_account_email');
delete_option('scso_last_sync_time');
delete_site_option('scso_last_sync_time');
delete_option('scso_db_version');
delete_site_option('scso_db_version');
delete_option('scso_activation_redirect');
delete_site_option('scso_activation_redirect');
delete_option('scso_gsc_email');
delete_site_option('scso_gsc_email');

// Delete Transients
delete_transient('scso_sync_error');
delete_site_transient('scso_sync_error');
delete_transient('scso_sync_lock');
delete_site_transient('scso_sync_lock');
delete_transient('scso_hide_dev_warning');
delete_site_transient('scso_hide_dev_warning');

// Clear Cron Jobs
wp_clear_scheduled_hook('scso_run_sync_batch');
wp_clear_scheduled_hook('scso_auto_sync');

