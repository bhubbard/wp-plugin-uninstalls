<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('actionnetwork_api_key');
delete_site_option('actionnetwork_api_key');
delete_option('actionnetwork_version');
delete_site_option('actionnetwork_version');
delete_option('actionnetwork_db_version');
delete_site_option('actionnetwork_db_version');
delete_option('actionnetwork_deferred_admin_notices');
delete_site_option('actionnetwork_deferred_admin_notices');
delete_option('actionnetwork_cache_timestamp');
delete_site_option('actionnetwork_cache_timestamp');
delete_option('actionnetwork_queue_status');
delete_site_option('actionnetwork_queue_status');
delete_option('actionnetwork_ajax_token');
delete_site_option('actionnetwork_ajax_token');
delete_option('actionnetwork_show_sync_notice');
delete_site_option('actionnetwork_show_sync_notice');
delete_option('actionnetwork_hcaptcha_site_key');
delete_site_option('actionnetwork_hcaptcha_site_key');
delete_option('actionnetwork_hcaptcha_secret_key');
delete_site_option('actionnetwork_hcaptcha_secret_key');

// Clear Cron Jobs
wp_clear_scheduled_hook('actionnetwork_cron_daily');

