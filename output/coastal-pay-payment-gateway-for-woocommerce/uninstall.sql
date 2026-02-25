-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_manage_stock', 'woocommerce_hold_stock_minutes', 'woocommerce_new_order_settings', 'woocommerce_cpgw_card_settings', 'woocommerce_cpgw_ach_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pay_response_received');
DELETE FROM wp_usermeta WHERE meta_key IN ('pay_response_received');
DELETE FROM wp_termmeta WHERE meta_key IN ('pay_response_received');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pay_response_received');

