<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpff_sp_worker_url');
delete_site_option('wpff_sp_worker_url');
delete_option('wpff_sp_proxy_list_url');
delete_site_option('wpff_sp_proxy_list_url');
delete_option('wpff_sp_sitemap_url');
delete_site_option('wpff_sp_sitemap_url');
delete_option('wpff_sp_cron_interval');
delete_site_option('wpff_sp_cron_interval');
delete_option('wpff_sp_shared_secret');
delete_site_option('wpff_sp_shared_secret');
delete_option('wpff_sp_preload_stats');
delete_site_option('wpff_sp_preload_stats');
delete_option('wpff_sp_custom_hours');
delete_site_option('wpff_sp_custom_hours');
delete_option('wpff_sp_cron_start_hour');
delete_site_option('wpff_sp_cron_start_hour');
delete_option('wpff_sp_cron_start_minute');
delete_site_option('wpff_sp_cron_start_minute');
delete_option('wpff_sp_log_migrated');
delete_site_option('wpff_sp_log_migrated');
delete_option('wpff_sp_sitemap_url_count');
delete_site_option('wpff_sp_sitemap_url_count');
delete_option('wpff_sp_batch_size');
delete_site_option('wpff_sp_batch_size');
delete_option('wpff_sp_delay_between_urls');
delete_site_option('wpff_sp_delay_between_urls');
delete_option('wpff_sp_delete_data_on_uninstall');
delete_site_option('wpff_sp_delete_data_on_uninstall');

// Delete Transients
delete_transient('wpff_sp_preload_cursor');
delete_site_transient('wpff_sp_preload_cursor');
delete_transient('wpff_sp_preload_urls');
delete_site_transient('wpff_sp_preload_urls');
delete_transient('wpff_sp_stop_flag');
delete_site_transient('wpff_sp_stop_flag');
delete_transient('wpff_sp_batch_stats');
delete_site_transient('wpff_sp_batch_stats');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpff_sp_run_preloader');

