-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_version', 'woocommerce_feature_custom_order_tables_enabled', 'woocommerce_custom_orders_table_enabled', 'woocommerce_custom_orders_table_data_sync_enabled', 'woocommerce_queue_flush_rewrite_rules', 'villatheme_affi_data', 'uap_mlm_enable', 'villatheme_hide_admin_toolbar', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

