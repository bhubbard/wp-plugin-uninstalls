-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpt_bulk_product_events', 'rpt_bulk_products', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'cpwt_show_countdown_on_shop_pages', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

