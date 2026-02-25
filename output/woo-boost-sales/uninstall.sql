-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_woocommerce_boost_sales', 'dismiss_update_crsells', 'woocommerce_manage_stock', 'woocommerce_hide_out_of_stock_items', 'xoo-wsc-gl-options', 'woocommerce_enable_review_rating', '_woocommerce_boost_sales_prefix', 'villatheme_hide_admin_toolbar', 'wc_featured_products', 'villatheme_call', 'villatheme_ads', 'villatheme_notices', 'villatheme_called', 'wc_products_onsale');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE 'vi_woocommerce_boost_sales_product_in_category_ids_%';
DELETE FROM wp_options WHERE option_name LIKE 'vi_woocommerce_boost_sales_product_in_tags_ids_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wbs_wcpb_bundle_data', '_price', '_regular_price', '_wbs_upsells', '_upsell_ids', '_crosssell_ids', '_wbs_crosssells', '_thumbnail_id', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_sold_individually', '_manage_stock', '_backorders', '_stock', 'dismiss_cross_sells_data_update', '_wbs_crosssells_bundle');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wbs_wcpb_bundle_data', '_price', '_regular_price', '_wbs_upsells', '_upsell_ids', '_crosssell_ids', '_wbs_crosssells', '_thumbnail_id', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_sold_individually', '_manage_stock', '_backorders', '_stock', 'dismiss_cross_sells_data_update', '_wbs_crosssells_bundle');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wbs_wcpb_bundle_data', '_price', '_regular_price', '_wbs_upsells', '_upsell_ids', '_crosssell_ids', '_wbs_crosssells', '_thumbnail_id', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_sold_individually', '_manage_stock', '_backorders', '_stock', 'dismiss_cross_sells_data_update', '_wbs_crosssells_bundle');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wbs_wcpb_bundle_data', '_price', '_regular_price', '_wbs_upsells', '_upsell_ids', '_crosssell_ids', '_wbs_crosssells', '_thumbnail_id', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_sale_price', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_sold_individually', '_manage_stock', '_backorders', '_stock', 'dismiss_cross_sells_data_update', '_wbs_crosssells_bundle');

