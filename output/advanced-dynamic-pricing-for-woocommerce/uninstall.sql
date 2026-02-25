-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_subscriptions_is_active', 'woocommerce_currency', 'woosb_settings', 'woocommerce_tax_display_shop', 'woocommerce_tax_display_cart', 'woocommerce_calc_taxes', 'woocommerce_prices_include_tax', 'woocommerce_price_num_decimals', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'woocommerce_currency_pos', 'woocommerce_tax_round_at_subtotal', 'woocommerce_default_country', 'woocommerce_price_display_suffix', 'import-result');
DELETE FROM wp_options WHERE option_name LIKE 'wdp_geoip_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price_wmcp', '_sale_price_wmcp', '_sale_price_adp', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price_wmcp', '_sale_price_wmcp', '_sale_price_adp', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price_wmcp', '_sale_price_wmcp', '_sale_price_adp', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price_wmcp', '_sale_price_wmcp', '_sale_price_adp', '_product_attributes');

