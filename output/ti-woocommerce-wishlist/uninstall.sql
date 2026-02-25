-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tinvwl_activation_date', 'tinvwl_notifications_postponed', 'rewrite_rules', 'tinvwl_wizard', 'eh_pricing_discount_cart_catalog_mode', 'elex_catalog_remove_addtocart_product', 'eh_pricing_discount_price_catalog_mode_exclude_admin', 'woocommerce_enable_giftcard_info_requirements', 'woocommerce_giftcard_to', 'woocommerce_giftcard_toEmail', 'woocommerce_giftcard_address', 'wpa_field_name', 'pewc_hide_zero', '_woosb_bundled_link', 'woocommerce_tax_display_shop', 'WpFastestCacheExclude', 'yith_wapo_settings_show_product_price_cart', 'yith_wapo_show_options_in_cart', 'woocommerce_cart_redirect_after_add', 'tinvwl-admin-notice-delay', '_tinvwl_activation_redirect', 'rocket_get_refreshed_fragments_cache');
DELETE FROM wp_options WHERE option_name LIKE '%_ver';
DELETE FROM wp_options WHERE option_name LIKE '%_wizard';
DELETE FROM wp_options WHERE option_name LIKE '%_db_ver';
DELETE FROM wp_options WHERE option_name LIKE 'tinvwl-%';
DELETE FROM wp_options WHERE option_name LIKE '%-style_options';
DELETE FROM wp_options WHERE option_name LIKE '%_dynamic_';
DELETE FROM wp_options WHERE option_name LIKE 'rocket_get_refreshed_fragments_cache_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tinvwl-user-review', 'tinvwl-user-premium', 'product_adjustment_hide_addtocart_catalog', 'product_adjustment_hide_addtocart_catalog_product', 'product_adjustment_exclude_admin_catalog', '_giftcard', 'afwhp_rule_type', 'afwhp_hide_products', 'afwhp_hide_categories', 'afwhp_hide_user_role', 'afwhp_is_hide_addtocart', 'afwhp_custom_button_text', 'afwhp_custom_button_link', 'afwhp_contact7_form', 'afwhp_hide_for_countries', 'afwhp_apply_on_all_products', 'woosb_ids', '_wishlist_analytics_processed');
DELETE FROM wp_usermeta WHERE meta_key IN ('tinvwl-user-review', 'tinvwl-user-premium', 'product_adjustment_hide_addtocart_catalog', 'product_adjustment_hide_addtocart_catalog_product', 'product_adjustment_exclude_admin_catalog', '_giftcard', 'afwhp_rule_type', 'afwhp_hide_products', 'afwhp_hide_categories', 'afwhp_hide_user_role', 'afwhp_is_hide_addtocart', 'afwhp_custom_button_text', 'afwhp_custom_button_link', 'afwhp_contact7_form', 'afwhp_hide_for_countries', 'afwhp_apply_on_all_products', 'woosb_ids', '_wishlist_analytics_processed');
DELETE FROM wp_termmeta WHERE meta_key IN ('tinvwl-user-review', 'tinvwl-user-premium', 'product_adjustment_hide_addtocart_catalog', 'product_adjustment_hide_addtocart_catalog_product', 'product_adjustment_exclude_admin_catalog', '_giftcard', 'afwhp_rule_type', 'afwhp_hide_products', 'afwhp_hide_categories', 'afwhp_hide_user_role', 'afwhp_is_hide_addtocart', 'afwhp_custom_button_text', 'afwhp_custom_button_link', 'afwhp_contact7_form', 'afwhp_hide_for_countries', 'afwhp_apply_on_all_products', 'woosb_ids', '_wishlist_analytics_processed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tinvwl-user-review', 'tinvwl-user-premium', 'product_adjustment_hide_addtocart_catalog', 'product_adjustment_hide_addtocart_catalog_product', 'product_adjustment_exclude_admin_catalog', '_giftcard', 'afwhp_rule_type', 'afwhp_hide_products', 'afwhp_hide_categories', 'afwhp_hide_user_role', 'afwhp_is_hide_addtocart', 'afwhp_custom_button_text', 'afwhp_custom_button_link', 'afwhp_contact7_form', 'afwhp_hide_for_countries', 'afwhp_apply_on_all_products', 'woosb_ids', '_wishlist_analytics_processed');

