-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dimension_unit', 'woocommerce_weight_unit', 'woocommerce_corcrm_payment_settings', 'woocommerce_estimate_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hiecor_product_id', '_wc_cog_cost', 'hwp_var_gtin', 'hcv4_page_tracking', '_bundle_items', 'msrp', 'hiecor_order_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('hiecor_product_id', '_wc_cog_cost', 'hwp_var_gtin', 'hcv4_page_tracking', '_bundle_items', 'msrp', 'hiecor_order_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('hiecor_product_id', '_wc_cog_cost', 'hwp_var_gtin', 'hcv4_page_tracking', '_bundle_items', 'msrp', 'hiecor_order_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hiecor_product_id', '_wc_cog_cost', 'hwp_var_gtin', 'hcv4_page_tracking', '_bundle_items', 'msrp', 'hiecor_order_id');

