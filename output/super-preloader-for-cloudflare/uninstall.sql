-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpff_sp_worker_url', 'wpff_sp_proxy_list_url', 'wpff_sp_sitemap_url', 'wpff_sp_cron_interval', 'wpff_sp_shared_secret', 'wpff_sp_preload_stats', 'wpff_sp_custom_hours', 'wpff_sp_cron_start_hour', 'wpff_sp_cron_start_minute', 'wpff_sp_log_migrated', 'wpff_sp_sitemap_url_count', 'wpff_sp_batch_size', 'wpff_sp_delay_between_urls', 'wpff_sp_delete_data_on_uninstall', 'wpff_sp_preload_cursor', 'wpff_sp_preload_urls', 'wpff_sp_stop_flag', 'wpff_sp_batch_stats');

