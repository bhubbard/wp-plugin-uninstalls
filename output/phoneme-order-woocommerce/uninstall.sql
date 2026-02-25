-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('phoneme_order_woocommerce_title_1', 'phoneme_order_woocommerce_title_2', 'phoneme_order_woocommerce_hint_text', 'phoneme_order_woocommerce_outofstock');

