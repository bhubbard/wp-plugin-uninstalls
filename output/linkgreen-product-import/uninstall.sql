-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cron', 'linkgreen_product_import_debug_options', 'linkgreen_product_import_setup_options', 'linkgreen_product_import_input_examples', 'lgpi-category-mapping', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', '_sku', '_visibility', '_stock_status', '_linkgreen_item_id', '_linkgreen_item_dropship', '_linkgreen_item_dropship_supplier', '_linkgreen_item_dropship_supplier_id', '_sale_price', '_regular_price', '_price', '_product_attributes', '_product_image_gallery', '_knawatfibu_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', '_sku', '_visibility', '_stock_status', '_linkgreen_item_id', '_linkgreen_item_dropship', '_linkgreen_item_dropship_supplier', '_linkgreen_item_dropship_supplier_id', '_sale_price', '_regular_price', '_price', '_product_attributes', '_product_image_gallery', '_knawatfibu_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', '_sku', '_visibility', '_stock_status', '_linkgreen_item_id', '_linkgreen_item_dropship', '_linkgreen_item_dropship_supplier', '_linkgreen_item_dropship_supplier_id', '_sale_price', '_regular_price', '_price', '_product_attributes', '_product_image_gallery', '_knawatfibu_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', '_sku', '_visibility', '_stock_status', '_linkgreen_item_id', '_linkgreen_item_dropship', '_linkgreen_item_dropship_supplier', '_linkgreen_item_dropship_supplier_id', '_sale_price', '_regular_price', '_price', '_product_attributes', '_product_image_gallery', '_knawatfibu_url');

