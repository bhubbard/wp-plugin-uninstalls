-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ovena_acp_api_key', 'ovena_acp_base_url', 'ovena_acp_transmission_mode', 'ovena_acp_batch_size', 'ovena_acp_enable_logging', 'ovena_acp_debug_mode', 'ovena_acp_return_window', 'ovena_acp_auto_sync', 'ovena_acp_sync_interval', 'ovena_acp_debug_logs', 'ovena_acp_logs', 'ovena_acp_api_stats', 'ovena_acp_last_sync', 'ovena_acp_product_sync_status', 'ovena_acp_sync_logs', 'ovena_acp_sync_stats');

