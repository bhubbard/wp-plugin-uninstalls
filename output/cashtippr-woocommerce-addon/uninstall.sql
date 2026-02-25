-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cashtippr_woocommerce_installed', 'woocommerce_hold_stock_minutes', 'woocommerce_manage_stock', 'woocommerce_cashtippr_woocommerce_settings');

