-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wc_upw_product_quantity_step', 'wc_upw_product_measurement', 'wc_upw_product_price_suffix', 'wc_upw_quantity_auto_update', 'wc_upw_variable_quantity_auto_update', 'wc_upw_archive_variations', 'wc_upw_quantity_variation', 'wc_upw_product_quantity_suffix', 'wc_upw_quantity_simple', 'wc_upw_product_price_adjust', 'wc_upw_product_price_quantity', 'woocommerce_weight_unit', 'woocommerce_cart_redirect_after_add', 'woocommerce_currency_pos');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_upw_measurement', '_upw_step', '_upw_quantity_suffix', '_upw_price_quantity', '_upw_price_suffix');
DELETE FROM wp_usermeta WHERE meta_key IN ('_upw_measurement', '_upw_step', '_upw_quantity_suffix', '_upw_price_quantity', '_upw_price_suffix');
DELETE FROM wp_termmeta WHERE meta_key IN ('_upw_measurement', '_upw_step', '_upw_quantity_suffix', '_upw_price_quantity', '_upw_price_suffix');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_upw_measurement', '_upw_step', '_upw_quantity_suffix', '_upw_price_quantity', '_upw_price_suffix');

