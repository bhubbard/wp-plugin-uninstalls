-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elex_first_installation_msg', 'active_sitewide_plugins', 'eh_product_choose_sale_regular', 'eh_pricing_discount_cart_catalog_mode_remove_cart_checkout', 'eh_pricing_discount_price_catalog_mode_exclude_admin', 'eh_pricing_discount_cart_catalog_mode', 'elex_catalog_remove_addtocart_shop', 'eh_pricing_discount_cart_catalog_mode_text', 'eh_pricing_discount_cart_user_role_text', 'eh_pricing_discount_cart_unregistered_user_text', 'elex_catalog_remove_addtocart_product', 'eh_pricing_discount_replace_cart_catalog_mode', 'eh_pricing_discount_price_adjustment_options', 'eh_pricing_discount_replace_cart_catalog_mode_text_product', 'eh_pricing_discount_replace_cart_catalog_mode_text_shop', 'eh_pricing_discount_replace_cart_catalog_mode_url_shop', 'eh_catalog_pricing_discount_price_catalog_mode', 'eh_catalog_pricing_discount_price_catalog_mode_text');
DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again';
DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later';
DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('product_adjustment_hide_price_catalog', 'product_adjustment_exclude_admin_catalog', 'eh_pricing_adjustment_product_price_user_role', 'product_adjustment_hide_price_unregistered', 'product_adjustment_hide_price_placeholder_catalog', 'product_adjustment_hide_price_placeholder_role', 'product_adjustment_hide_price_placeholder_unregistered');
DELETE FROM wp_usermeta WHERE meta_key IN ('product_adjustment_hide_price_catalog', 'product_adjustment_exclude_admin_catalog', 'eh_pricing_adjustment_product_price_user_role', 'product_adjustment_hide_price_unregistered', 'product_adjustment_hide_price_placeholder_catalog', 'product_adjustment_hide_price_placeholder_role', 'product_adjustment_hide_price_placeholder_unregistered');
DELETE FROM wp_termmeta WHERE meta_key IN ('product_adjustment_hide_price_catalog', 'product_adjustment_exclude_admin_catalog', 'eh_pricing_adjustment_product_price_user_role', 'product_adjustment_hide_price_unregistered', 'product_adjustment_hide_price_placeholder_catalog', 'product_adjustment_hide_price_placeholder_role', 'product_adjustment_hide_price_placeholder_unregistered');
DELETE FROM wp_commentmeta WHERE meta_key IN ('product_adjustment_hide_price_catalog', 'product_adjustment_exclude_admin_catalog', 'eh_pricing_adjustment_product_price_user_role', 'product_adjustment_hide_price_unregistered', 'product_adjustment_hide_price_placeholder_catalog', 'product_adjustment_hide_price_placeholder_role', 'product_adjustment_hide_price_placeholder_unregistered');

