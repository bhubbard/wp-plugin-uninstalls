<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ovena_acp_api_key');
delete_site_option('ovena_acp_api_key');
delete_option('ovena_acp_base_url');
delete_site_option('ovena_acp_base_url');
delete_option('ovena_acp_transmission_mode');
delete_site_option('ovena_acp_transmission_mode');
delete_option('ovena_acp_batch_size');
delete_site_option('ovena_acp_batch_size');
delete_option('ovena_acp_enable_logging');
delete_site_option('ovena_acp_enable_logging');
delete_option('ovena_acp_debug_mode');
delete_site_option('ovena_acp_debug_mode');
delete_option('ovena_acp_return_window');
delete_site_option('ovena_acp_return_window');
delete_option('ovena_acp_auto_sync');
delete_site_option('ovena_acp_auto_sync');
delete_option('ovena_acp_sync_interval');
delete_site_option('ovena_acp_sync_interval');
delete_option('ovena_acp_debug_logs');
delete_site_option('ovena_acp_debug_logs');
delete_option('ovena_acp_logs');
delete_site_option('ovena_acp_logs');
delete_option('ovena_acp_api_stats');
delete_site_option('ovena_acp_api_stats');
delete_option('ovena_acp_last_sync');
delete_site_option('ovena_acp_last_sync');
delete_option('ovena_acp_product_sync_status');
delete_site_option('ovena_acp_product_sync_status');
delete_option('ovena_acp_sync_logs');
delete_site_option('ovena_acp_sync_logs');
delete_option('ovena_acp_sync_stats');
delete_site_option('ovena_acp_sync_stats');

// Clear Cron Jobs
wp_clear_scheduled_hook('ovena_acp_sync');

