-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edit_order_page_id', 'edit_product_page_id', 'add_product_page_id', 'list_product_page_id', 'list_order_page_id', 'commission_fee', 'product_show', 'woocommerce_woo_wallet_endpoint');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_role', 'product_terms_condtion', 'product_tags', 'product_category', 'product_type', '_downloadable', '_downloadable_files', 'product', '_virtual', '_product_image_gallery', 'bank_account_name', 'bank_account', 'name_of_bank', 'IBAN', 'BIC', 'ifsc_code', 'lock_bank_details');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_role', 'product_terms_condtion', 'product_tags', 'product_category', 'product_type', '_downloadable', '_downloadable_files', 'product', '_virtual', '_product_image_gallery', 'bank_account_name', 'bank_account', 'name_of_bank', 'IBAN', 'BIC', 'ifsc_code', 'lock_bank_details');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_role', 'product_terms_condtion', 'product_tags', 'product_category', 'product_type', '_downloadable', '_downloadable_files', 'product', '_virtual', '_product_image_gallery', 'bank_account_name', 'bank_account', 'name_of_bank', 'IBAN', 'BIC', 'ifsc_code', 'lock_bank_details');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_role', 'product_terms_condtion', 'product_tags', 'product_category', 'product_type', '_downloadable', '_downloadable_files', 'product', '_virtual', '_product_image_gallery', 'bank_account_name', 'bank_account', 'name_of_bank', 'IBAN', 'BIC', 'ifsc_code', 'lock_bank_details');

