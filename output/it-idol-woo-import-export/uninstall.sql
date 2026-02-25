-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('it_idol_woo_csv_header', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price', '_sku', '_sale_price_dates_from', '_sale_price_dates_to', '_manage_stock', '_stock', '_backorders', '_stock_status', '_sold_individually', '_product_url', '_button_text', '_virtual', '_downloadable', '_downloadable_files', '_weight', '_length', '_width', '_height', '_purchase_note', '_product_attributes', '_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price', '_sku', '_sale_price_dates_from', '_sale_price_dates_to', '_manage_stock', '_stock', '_backorders', '_stock_status', '_sold_individually', '_product_url', '_button_text', '_virtual', '_downloadable', '_downloadable_files', '_weight', '_length', '_width', '_height', '_purchase_note', '_product_attributes', '_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price', '_sku', '_sale_price_dates_from', '_sale_price_dates_to', '_manage_stock', '_stock', '_backorders', '_stock_status', '_sold_individually', '_product_url', '_button_text', '_virtual', '_downloadable', '_downloadable_files', '_weight', '_length', '_width', '_height', '_purchase_note', '_product_attributes', '_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_price', '_sku', '_sale_price_dates_from', '_sale_price_dates_to', '_manage_stock', '_stock', '_backorders', '_stock_status', '_sold_individually', '_product_url', '_button_text', '_virtual', '_downloadable', '_downloadable_files', '_weight', '_length', '_width', '_height', '_purchase_note', '_product_attributes', '_product_image_gallery');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

