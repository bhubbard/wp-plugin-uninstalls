-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tlms-domain', 'tlms-apikey', 'tlms-woocommerce-active', 'tlms-enroll-user-to-courses', 'tlms_courses_page_title', 'tlms_courses_page_name', 'tlms_courses_page_id', 'tlms-automtically-complete-orders', 'tlms-domain-map', 'tlms_signup_page_title', 'tlms_signup_page_name', 'tlms_signup_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_regular_price', '_sale_price', '_sold_individually', '_manage_stock', '_backorders', '_stock', '_talentlms_course_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_regular_price', '_sale_price', '_sold_individually', '_manage_stock', '_backorders', '_stock', '_talentlms_course_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_regular_price', '_sale_price', '_sold_individually', '_manage_stock', '_backorders', '_stock', '_talentlms_course_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_visibility', '_stock_status', 'total_sales', '_downloadable', '_virtual', '_purchase_note', '_featured', '_weight', '_length', '_width', '_height', '_sku', '_product_attributes', '_sale_price_dates_from', '_sale_price_dates_to', '_price', '_regular_price', '_sale_price', '_sold_individually', '_manage_stock', '_backorders', '_stock', '_talentlms_course_id');

