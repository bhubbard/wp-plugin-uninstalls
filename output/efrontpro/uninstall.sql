-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ef-domain', 'ef-apikey', 'ef-woocommerce-active', 'ef_courses_page_title', 'ef_courses_page_name', 'ef_courses_page_id', 'ef_signup_page_title', 'ef_signup_page_name', 'ef_signup_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_efront_course_id', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_regular_price', '_sale_price', '_sold_individually', '_manage_stock', '_backorders', '_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_efront_course_id', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_regular_price', '_sale_price', '_sold_individually', '_manage_stock', '_backorders', '_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_efront_course_id', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_regular_price', '_sale_price', '_sold_individually', '_manage_stock', '_backorders', '_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_efront_course_id', '_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_regular_price', '_sale_price', '_sold_individually', '_manage_stock', '_backorders', '_stock');

