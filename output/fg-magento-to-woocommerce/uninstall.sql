-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fgm2wc_options', 'fgm2wc_last_magento_product_id', 'fgm2wc_last_category_id', 'fgm2wc_last_magento_cms_id', 'fgm2wc_last_update', 'default_product_cat', 'product_cat_children', 'woocommerce_placeholder_image', 'fgm2wc_save_posts', 'fgm2wc_save_terms', 'fgm2wc_save_term_relationships', 'fgm2wc_stop_import', 'wc_count_comments', 'wc_attribute_taxonomies', 'woocommerce_reports-transient-version');
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';
DELETE FROM wp_options WHERE option_name LIKE '%_children';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fgm2wc_old_cms_id', 'thumbnail_id', '_fgm2wc_old_product_id', '_stock_status', '_regular_price', '_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_weight', '_length', '_width', '_height', '_sku', '_stock', '_manage_stock', '_backorders', '_product_image_gallery', '_wc_review_count', '_wc_rating_count', '_wc_average_rating', 'total_sales', '_fgm2wc_old_file', '_wp_attachment_image_alt', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fgm2wc_old_cms_id', 'thumbnail_id', '_fgm2wc_old_product_id', '_stock_status', '_regular_price', '_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_weight', '_length', '_width', '_height', '_sku', '_stock', '_manage_stock', '_backorders', '_product_image_gallery', '_wc_review_count', '_wc_rating_count', '_wc_average_rating', 'total_sales', '_fgm2wc_old_file', '_wp_attachment_image_alt', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fgm2wc_old_cms_id', 'thumbnail_id', '_fgm2wc_old_product_id', '_stock_status', '_regular_price', '_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_weight', '_length', '_width', '_height', '_sku', '_stock', '_manage_stock', '_backorders', '_product_image_gallery', '_wc_review_count', '_wc_rating_count', '_wc_average_rating', 'total_sales', '_fgm2wc_old_file', '_wp_attachment_image_alt', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fgm2wc_old_cms_id', 'thumbnail_id', '_fgm2wc_old_product_id', '_stock_status', '_regular_price', '_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_weight', '_length', '_width', '_height', '_sku', '_stock', '_manage_stock', '_backorders', '_product_image_gallery', '_wc_review_count', '_wc_rating_count', '_wc_average_rating', 'total_sales', '_fgm2wc_old_file', '_wp_attachment_image_alt', '_thumbnail_id');

