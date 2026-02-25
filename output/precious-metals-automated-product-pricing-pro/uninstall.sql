-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nfs_plugin_install_date', 'nfusion_enable_product_reindexing', 'nfusion_prev_product_reindexing_interval', 'nfusion_product_reindexing_interval', 'nfusion_tenant_alias', 'nfusion_api_token', 'nfusion_sales_channel', 'nfusion_price_update_interval', 'nfusion_low_price_label', 'nfusion_show_buy_price', 'nfusion_buy_price_label', 'nfusion_show_tiered_pricing', 'nfusion_pricing_check_label', 'nfusion_show_credit_card_price', 'nfusion_pricing_card_label', 'nfusion_cc_price', 'nfusion_use_wholesale_price', 'nfs_attributes_seeded', 'nfs_last_invalid_products', 'nfusion_arr_affinity_cookie', 'nfusion_arr_affinity_samesite_cookie', 'nfs_sales_channels', 'wc_attribute_taxonomies', 'nfs_missing_required_metadata', 'nfs_product_settings_upsert_result');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nfs_weight_uom', 'nfs_catalog_plugin_sku', '_weight', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('nfs_weight_uom', 'nfs_catalog_plugin_sku', '_weight', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('nfs_weight_uom', 'nfs_catalog_plugin_sku', '_weight', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nfs_weight_uom', 'nfs_catalog_plugin_sku', '_weight', '_product_attributes');

