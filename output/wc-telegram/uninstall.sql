-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_enable_order_comments', 'woocommerce_placeholder_image', 'woocommerce_default_catalog_orderby', 'woocommerce_tax_total_display');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_telegram_billing_state', 'wc_telegram_shipping_state', 'wc_telegram_ship_to_different_address', 'wc_telegram_chat_id', 'wc_telegram_message');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_telegram_billing_state', 'wc_telegram_shipping_state', 'wc_telegram_ship_to_different_address', 'wc_telegram_chat_id', 'wc_telegram_message');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_telegram_billing_state', 'wc_telegram_shipping_state', 'wc_telegram_ship_to_different_address', 'wc_telegram_chat_id', 'wc_telegram_message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_telegram_billing_state', 'wc_telegram_shipping_state', 'wc_telegram_ship_to_different_address', 'wc_telegram_chat_id', 'wc_telegram_message');

