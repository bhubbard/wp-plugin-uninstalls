-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_linet_debug', 'wc_linet_warehouse_id', 'wc_linet_sale_pricelist_id', 'wc_linet_warehouse_stock_count', 'wc_linet_pricelist_account', 'wc_linet_syncField', 'wc_linet_syncValue', 'wc_linet_warehouse_exclude', 'wc_linet_syncCatField', 'wc_linet_syncCatValue', 'wc_linet_last_update', 'wc_linet_picsync', 'wc_linet_dev', 'wc_linet_rect_img', 'wc_linet_only_stock_manage', 'wc_linet_global_attr', 'wc_linet_no_description', 'wc_linet_old_attr', 'wc_linet_not_product_attributes', 'wc_linet_itemFields', 'wc_linet_stock_manage', 'wc_linet_consumer_id', 'wc_linet_consumer_key', 'wc_linet_company', 'wc_linet_sync_orders', 'wc_linet_linet_doc', 'wc_linet_one_item_order', 'wc_linet_j5Token', 'wc_linet_j5Number', 'wc_linet_sku_find', 'wc_linet_genral_item', 'wc_linet_genral_acc', 'wc_linet_status', 'wc_linet_printview', 'wc_linet_autosend', 'wc_linet_autosendsms', 'wc_linet_elementor_form', 'wc_linet_manual_linet_doc', 'wc_linet_nonce', 'wc_linet_sync_items', '_transient_wc_attribute_taxonomies', 'wc_linet_income_acc', 'wc_linet_income_acc_novat', 'wc_linet_sync_back_status', 'wc_linet_last_sns', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wc_linet_sync_orders_wc-%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_linet_cf7%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_linet_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_linet_ywapo%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_linet_cat', '_linet_id', '_linet_last_update', 'product_count_product_cat', 'order', 'display_type', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_linet_cat', '_linet_id', '_linet_last_update', 'product_count_product_cat', 'order', 'display_type', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_linet_cat', '_linet_id', '_linet_last_update', 'product_count_product_cat', 'order', 'display_type', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_linet_cat', '_linet_id', '_linet_last_update', 'product_count_product_cat', 'order', 'display_type', 'thumbnail_id');

