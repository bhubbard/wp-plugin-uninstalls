-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bosta_settings', 'bosta_initial_product_sync_completed', 'bosta_webhook_secret', 'bosta_country_id_Transient', 'bosta_inventory_success', 'bosta_inventory_error', 'bosta_success_count', 'bosta_success', 'bosta_errors', 'bosta_failed_orders', 'deferred_order_update', 'bosta_current_ranking_filter', 'bosta_current_ranking_filter_legacy', 'bosta_zoning', 'bosta_city_areas', 'bosta_timelineLength');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE 'bosta_payment_method_update_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_state', '_billing_area', '_bosta_sku', '_sku', '_bosta_product_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_state', '_billing_area', '_bosta_sku', '_sku', '_bosta_product_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_state', '_billing_area', '_bosta_sku', '_sku', '_bosta_product_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_state', '_billing_area', '_bosta_sku', '_sku', '_bosta_product_id');

