-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dintero_checkout_settings', 'woocommerce_ship_to_destination', 'krokedil_debuglog_dintero_checkout', 'woocommerce_price_num_decimals', 'dintero_checkout_access_token', 'dintero_checkout_keyword_backlinks');
DELETE FROM wp_options WHERE option_name LIKE 'dintero_shipping_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ywgc_applied_gift_cards', 'dismissed_dintero_wc_zero_decimal_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ywgc_applied_gift_cards', 'dismissed_dintero_wc_zero_decimal_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ywgc_applied_gift_cards', 'dismissed_dintero_wc_zero_decimal_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ywgc_applied_gift_cards', 'dismissed_dintero_wc_zero_decimal_notice');

