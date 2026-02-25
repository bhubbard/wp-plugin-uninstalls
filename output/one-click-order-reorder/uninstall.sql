-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ced_ocor_general_settings', 'woocommerce_myaccount_page_id', 'ced_ocor_attchment_icon');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ced_ocor_basket_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('ced_ocor_basket_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('ced_ocor_basket_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ced_ocor_basket_info');

