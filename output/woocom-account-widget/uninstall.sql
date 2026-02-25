-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocom_aw_login_with_email', 'woocommerce_cart_page_id', 'woocommerce_myaccount_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_umf_uploaded_file_name_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_umf_uploaded_file_name_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_umf_uploaded_file_name_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_umf_uploaded_file_name_%';

