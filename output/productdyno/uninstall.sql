-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_productdyno_api_key', 'pd_products_data', 'pd_collections_data');
DELETE FROM wp_options WHERE option_name LIKE 'pd_collection_products_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'pd_product_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'pd_product_login_page_%';
DELETE FROM wp_options WHERE option_name LIKE 'pd_product_forgot_password_page_%';
DELETE FROM wp_options WHERE option_name LIKE 'pd_product_reset_password_page_%';
DELETE FROM wp_options WHERE option_name LIKE 'pd_product_register_page_%';
DELETE FROM wp_options WHERE option_name LIKE 'pd_collection_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'pd_collection_login_page_%';
DELETE FROM wp_options WHERE option_name LIKE 'pd_collection_forgot_password_page_%';
DELETE FROM wp_options WHERE option_name LIKE 'pd_collection_reset_password_page_%';
DELETE FROM wp_options WHERE option_name LIKE 'pd_collection_register_page_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pd_type', 'pd_product_id', 'pd_collection_id', 'pd_collection_product_id', 'pd_no_access_page_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('pd_type', 'pd_product_id', 'pd_collection_id', 'pd_collection_product_id', 'pd_no_access_page_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('pd_type', 'pd_product_id', 'pd_collection_id', 'pd_collection_product_id', 'pd_no_access_page_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pd_type', 'pd_product_id', 'pd_collection_id', 'pd_collection_product_id', 'pd_no_access_page_id');

