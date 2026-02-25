-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zonelogistic_api_token', 'zonelogistic_min_order_date', 'zonelogistic_order_status', 'zonelogistic_shipping_map');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_zonelogistic_own_stock', '_zonelogistic_sku_override', 'courier', 'tracking_number', 'zonelogistic_status', 'tracking_url', 'delivered_status', '_zonelogistic_retry_count', 'woosb_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_zonelogistic_own_stock', '_zonelogistic_sku_override', 'courier', 'tracking_number', 'zonelogistic_status', 'tracking_url', 'delivered_status', '_zonelogistic_retry_count', 'woosb_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_zonelogistic_own_stock', '_zonelogistic_sku_override', 'courier', 'tracking_number', 'zonelogistic_status', 'tracking_url', 'delivered_status', '_zonelogistic_retry_count', 'woosb_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_zonelogistic_own_stock', '_zonelogistic_sku_override', 'courier', 'tracking_number', 'zonelogistic_status', 'tracking_url', 'delivered_status', '_zonelogistic_retry_count', 'woosb_ids');

