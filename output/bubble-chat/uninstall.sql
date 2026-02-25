-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wa_bubble_options', 'wa_bubble_options_style', 'wa_bubble_page_conditions', 'wa_bubble_schedule', 'woocommerce_shop_page_id', 'woocommerce_myaccount_page_id', 'woocommerce_cart_page_id', 'woocommerce_checkout_page_id');

