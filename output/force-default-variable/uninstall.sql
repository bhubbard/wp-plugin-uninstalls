-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'fdv_wc_keep_manually_set_defaults_variable', 'fdv_wc_sort_variable', 'fdv_wc_sort_then_variable', 'woocommerce_hide_out_of_stock_items', 'fdv_wc_grey_out_variations_when_out_of_stock', 'fdv_wc_hide_variations_when_out_of_stock');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_attributes');

