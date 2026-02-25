-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_thanks_page_id', 'woocommerce_cart_page_id', 'woocommerce_bambora_settings');

