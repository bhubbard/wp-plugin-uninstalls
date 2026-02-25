-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_sqrip_settings', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_default_country', 'woocommerce_store_city', 'woocommerce_store_postcode', 'sqrip_admin_action_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sqrip_qr_pdf_attachment_id', 'sqrip_pdf_file_url', 'sqrip_pdf_file_path', 'iban_num', 'sqrip_reference_id', 'sqrip_pdf_file', 'sqrip_png_file_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('sqrip_qr_pdf_attachment_id', 'sqrip_pdf_file_url', 'sqrip_pdf_file_path', 'iban_num', 'sqrip_reference_id', 'sqrip_pdf_file', 'sqrip_png_file_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('sqrip_qr_pdf_attachment_id', 'sqrip_pdf_file_url', 'sqrip_pdf_file_path', 'iban_num', 'sqrip_reference_id', 'sqrip_pdf_file', 'sqrip_png_file_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sqrip_qr_pdf_attachment_id', 'sqrip_pdf_file_url', 'sqrip_pdf_file_path', 'iban_num', 'sqrip_reference_id', 'sqrip_pdf_file', 'sqrip_png_file_url');

