-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('efbtw_bundles_save_id', 'efbtw_global_settings', 'woocommerce_currency_pos', 'efbtw_product_per_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('efbtw_bundle_item_group', 'efbtw_primary_discount_type', 'efbtw_bundle_primary_item_price', '_efbtw_allow_customization', '_efbtw_hide_outof_stock', '_efbtw_fbtcheckboxstate', '_efbtw_select_bundle_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('efbtw_bundle_item_group', 'efbtw_primary_discount_type', 'efbtw_bundle_primary_item_price', '_efbtw_allow_customization', '_efbtw_hide_outof_stock', '_efbtw_fbtcheckboxstate', '_efbtw_select_bundle_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('efbtw_bundle_item_group', 'efbtw_primary_discount_type', 'efbtw_bundle_primary_item_price', '_efbtw_allow_customization', '_efbtw_hide_outof_stock', '_efbtw_fbtcheckboxstate', '_efbtw_select_bundle_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('efbtw_bundle_item_group', 'efbtw_primary_discount_type', 'efbtw_bundle_primary_item_price', '_efbtw_allow_customization', '_efbtw_hide_outof_stock', '_efbtw_fbtcheckboxstate', '_efbtw_select_bundle_product');

