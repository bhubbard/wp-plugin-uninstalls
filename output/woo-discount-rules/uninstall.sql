-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advanced_woo_discount_rules_load_version', 'active_sitewide_plugins', 'woocommerce_currency', '_awdr_review', 'advanced_woo_discount_rules_current_version', 'woocommerce_tax_display_cart', 'woocommerce_tax_display_shop', 'icl_sitepress_settings', 'woo-discount-config', 'woocommerce_price_num_decimals', 'woocommerce_calc_taxes', 'woocommerce_prices_include_tax', 'awdr_priority_reset', 'awdr_activity_log_version', 'awdr_addons_list', 'wdr_recommendations_list', 'awdr_sale_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('awdr_filters');
DELETE FROM wp_usermeta WHERE meta_key IN ('awdr_filters');
DELETE FROM wp_termmeta WHERE meta_key IN ('awdr_filters');
DELETE FROM wp_commentmeta WHERE meta_key IN ('awdr_filters');

