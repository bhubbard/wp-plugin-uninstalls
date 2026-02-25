-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shoppanel_active', 'woocommerce_manage_stock', 'shoppanel_default', 'woocommerce_notify_low_stock_amount', 'shoppanel_mapbox_token');

