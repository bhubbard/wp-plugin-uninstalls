-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_manage_stock', 'gtcsync_sync_cache_seconds', 'gtcsync_background_sync_enabled', 'gtcsync_background_sync_interval_seconds', 'gtcsync_background_sync_last_synced', 'gtcsync_background_sync_flush_cache');
DELETE FROM wp_options WHERE option_name LIKE '%global_attributes';
DELETE FROM wp_options WHERE option_name LIKE '%background_sync_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%background_sync_interval_seconds';
DELETE FROM wp_options WHERE option_name LIKE '%sync_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%subdomain';
DELETE FROM wp_options WHERE option_name LIKE '%username';
DELETE FROM wp_options WHERE option_name LIKE '%password';
DELETE FROM wp_options WHERE option_name LIKE '%eula_version';
DELETE FROM wp_options WHERE option_name LIKE '%outlet_id';
DELETE FROM wp_options WHERE option_name LIKE '%outlet_name';
DELETE FROM wp_options WHERE option_name LIKE '%vat_rates';
DELETE FROM wp_options WHERE option_name LIKE '%import_product_batch_count';
DELETE FROM wp_options WHERE option_name LIKE '%sync_adjustment_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%sync_cache_seconds';
DELETE FROM wp_options WHERE option_name LIKE '%background_sync_last_synced';
DELETE FROM wp_options WHERE option_name LIKE '%background_sync_flush_cache';
DELETE FROM wp_options WHERE option_name LIKE '%token';
DELETE FROM wp_options WHERE option_name LIKE '%eula_datetime';
DELETE FROM wp_options WHERE option_name LIKE '%eula_user';
DELETE FROM wp_options WHERE option_name LIKE '%import_temp';
DELETE FROM wp_options WHERE option_name LIKE '%export_temp';

