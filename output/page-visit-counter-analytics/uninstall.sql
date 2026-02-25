-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('PageVICO_post_types', 'PageVICO_block_posts', 'PageVICO_exclude_posts', 'PageVICO_geo_db_last_updated', 'pagevico_apvc_import_status', 'PageVICO_enable_tracking', 'PageVICO_short_number', 'PageVICO_exclude_roles', 'PageVICO_block_users', 'PageVICO_block_ips', 'PageVICO_analytics_retention', 'PageVICO_heatmap_retention', 'session_timeout_minutes', 'pagevico_views_retention', 'data_retention_months', 'PageVICO_db_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'pagevico_pro_tables_created', 'pagevico_data_cleanup', 'PageVICO_geo_db_check', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'pagevico_apvc_data_available');

