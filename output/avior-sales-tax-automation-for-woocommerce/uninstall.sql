-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_calc_taxes', 'woocommerce_tax_based_on', 'woocommerce_prices_include_tax', 'woocommerce_default_customer_address', 'woocommerce_shipping_tax_class', 'woocommerce_tax_round_at_subtotal', 'woocommerce_tax_display_shop', 'woocommerce_tax_display_cart', 'woocommerce_tax_total_display', 'woocommerce_default_country');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_county', 'shipping_county', '_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_county', 'shipping_county', '_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_county', 'shipping_county', '_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_county', 'shipping_county', '_price');

