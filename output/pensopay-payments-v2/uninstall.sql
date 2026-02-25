-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'woocommerce_thanks_page_id', 'woocommerce_cart_page_id', 'woocommerce_email_footer_text');
DELETE FROM wp_options WHERE option_name LIKE 'wcpp_transaction_%';

