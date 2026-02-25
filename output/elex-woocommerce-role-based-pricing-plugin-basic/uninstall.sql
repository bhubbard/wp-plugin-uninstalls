-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_tax_display_shop', 'eh_pricing_discount_price_adjustment_options', 'eh_pricing_discount_product_price_user_role', 'eh_pricing_discount_product_on_users', 'eh_pricing_discount_cart_user_role_remove_cart_checkout', 'eh_pricing_discount_cart_unregistered_user_remove_cart_checkout', 'eh_pricing_discount_cart_user_role', 'eh_pricing_discount_cart_unregistered_user', 'eh_pricing_discount_cart_user_role_text', 'eh_pricing_discount_cart_unregistered_user_text', 'eh_pricing_discount_replace_cart_user_role', 'eh_pricing_discount_replace_cart_unregistered_user', 'eh_pricing_discount_enable_tax_options', 'eh_pricing_discount_price_tax_options', 'eh_pricing_discount_enable_price_suffix', 'eh_pricing_discount_price_general_price_suffix', 'eh_pricing_discount_role_price_suffix', 'eh_pricing_discount_replace_cart_unregistered_user_text_product', 'eh_pricing_discount_replace_cart_unregistered_user_text_shop', 'eh_pricing_discount_replace_cart_unregistered_user_url_shop', 'eh_pricing_discount_replace_cart_user_role_text_product', 'eh_pricing_discount_replace_cart_user_role_text_shop', 'eh_pricing_discount_replace_cart_user_role_url_shop', 'eh_pricing_discount_multiple_role_price', 'woocommerce_currency', 'wc_price_based_country_regions', 'eh_pricing_discount_hide_regular_price_unregistered', 'eh_pricing_discount_regular_price_user_role', 'eh_pricing_discount_price_user_role', 'eh_pricing_discount_price_unregistered_user', 'eh_pricing_discount_price_user_role_text', 'eh_pricing_discount_price_unregistered_user_text');
DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again';
DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later';
DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price');

