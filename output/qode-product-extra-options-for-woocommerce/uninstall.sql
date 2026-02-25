-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_price_thousand_sep', 'woocommerce_price_decimal_sep', 'woocommerce_price_display_suffix', 'woocommerce_calc_taxes', 'woocommerce_prices_include_tax', 'woocommerce_tax_display_cart', 'woocommerce_tax_display_shop', 'qode_product_extra_options_for_woocommerce_framework_permalinks', 'qode_product_extra_options_for_woocommerce_framework_permalinks_updated', 'qode_wpv_vendors_option_advanced_product_options_management', 'qpeofw_sold_individually_product_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

