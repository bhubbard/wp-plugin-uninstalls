-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('website_reviewpilot_license_key', 'website_reviewpilot_sender_email', 'active_sitewide_plugins', 'website_reviewpilot_status', 'website_reviewpilot_use_style', 'reviewpilot_fields_submitted');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woo_reviewpilot_enable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woo_reviewpilot_enable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woo_reviewpilot_enable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woo_reviewpilot_enable');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_name_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_name_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_name_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_name_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_path_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_path_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_path_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_file_path_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_product_name_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_product_name_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_product_name_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_reviewpilot_uploaded_product_name_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

