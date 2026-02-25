-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_ufdc_use_style', 'woocommerce_ufdc_upload_dir', 'easy_ufdc_page', 'eufdc_debug', 'eufdc_product_page_positions', 'easy_ufdc_allowed_file_types', 'easy_ufdc_max_uploadsize', 'eufdc_amazon_credential', 'easy_ufdc_auto_sync', 'woocommerce_ufdc_min_w', 'woocommerce_ufdc_max_w', 'woocommerce_ufdc_min_h', 'woocommerce_ufdc_max_h', 'eufdc_animations', 'woocommerce_ufdc_upload_anim', 'eufdc_email', 'eufdc_email_link', 'eufdc_billing_off', 'eufdc_shipping_off', 'eufdc_order_comments_off', 'eufdc_secure_links', 'eufdc_secure_upload', 'eufdc_server_side_check', 'eufdc_img_thumbnails', 'eufdc_items_attachments', 'easy_ufdc_page_checkout_refresh', 'easy_ufdc_caption', 'easy_ufdc_success', 'easy_ufdc_multiple', 'easy_ufdc_limit', 'easy_ufdc_prog', 'easy_ufdc_req', 'easy_ufdc_required_limit', 'eufdc_input_text_field', 'eufdc_input_text_label', 'eufdc_optional', 'woocommerce_myaccount_page_id', 'easy_umf_status', 'easy_ufdc_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eufdc_index', 'eufdc_product_id', 'eufdc_variation_id', '_eufdc_files_register', '_eufdc_attached_user', 'eufdc_max_files', 'eufdc_required_files', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('eufdc_index', 'eufdc_product_id', 'eufdc_variation_id', '_eufdc_files_register', '_eufdc_attached_user', 'eufdc_max_files', 'eufdc_required_files', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('eufdc_index', 'eufdc_product_id', 'eufdc_variation_id', '_eufdc_files_register', '_eufdc_attached_user', 'eufdc_max_files', 'eufdc_required_files', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eufdc_index', 'eufdc_product_id', 'eufdc_variation_id', '_eufdc_files_register', '_eufdc_attached_user', 'eufdc_max_files', 'eufdc_required_files', '_wp_attached_file');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_name_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_name_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_name_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_name_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_path_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_path_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_path_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_file_path_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_product_name_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woo_ufdc_uploaded_product_name_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_product_name_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woo_ufdc_uploaded_product_name_%';

