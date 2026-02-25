-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_kigokasa_api_email_from', 'woo_kigokasa_api_email_from_name', 'woo_kigokasa_api_show_migration_notice', 'woo_kigokasa_api_version', 'kigokasa_plugin_version', 'kigokasa_plugin_settings', 'woo_kigokasa_api_settings', 'woo_kigokasa_api_skip_status_order_created', 'woo_kigokasa_api_skip_status_order_completed', 'woo_kigokasa_api_pin', 'woo_kigokasa_api_shipping_reference', 'woo_kigokasa_api_custom_mapping', 'woo_kigokasa_api_vat_invoices', 'woo_kigokasa_api_username', 'woo_kigokasa_api_password', 'woo_kigokasa_api_reply_to', 'woo_kigokasa_api_employee_pin');
DELETE FROM wp_options WHERE option_name LIKE 'woo_kigokasa_api_pos_type-%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_kigokasa_api_pdf_payment_type-%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_kigokasa_api_payment_type-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipping_vat_number', '_billing_vat_number', 'woo_kigokasa_api_vat_invoices_checkbox', 'woo_kigokasa_api_vat_invoices_company', 'woo_kigokasa_api_vat_invoices_address', 'woo_kigokasa_api_vat_invoices_city', 'woo_kigokasa_api_vat_invoices_zip', 'woo_kigokasa_api_vat_invoices_vat_number', '_kigokasa_pos_number', '_kigokasa_doc_type', '_kigokasa_id_pos');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipping_vat_number', '_billing_vat_number', 'woo_kigokasa_api_vat_invoices_checkbox', 'woo_kigokasa_api_vat_invoices_company', 'woo_kigokasa_api_vat_invoices_address', 'woo_kigokasa_api_vat_invoices_city', 'woo_kigokasa_api_vat_invoices_zip', 'woo_kigokasa_api_vat_invoices_vat_number', '_kigokasa_pos_number', '_kigokasa_doc_type', '_kigokasa_id_pos');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipping_vat_number', '_billing_vat_number', 'woo_kigokasa_api_vat_invoices_checkbox', 'woo_kigokasa_api_vat_invoices_company', 'woo_kigokasa_api_vat_invoices_address', 'woo_kigokasa_api_vat_invoices_city', 'woo_kigokasa_api_vat_invoices_zip', 'woo_kigokasa_api_vat_invoices_vat_number', '_kigokasa_pos_number', '_kigokasa_doc_type', '_kigokasa_id_pos');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipping_vat_number', '_billing_vat_number', 'woo_kigokasa_api_vat_invoices_checkbox', 'woo_kigokasa_api_vat_invoices_company', 'woo_kigokasa_api_vat_invoices_address', 'woo_kigokasa_api_vat_invoices_city', 'woo_kigokasa_api_vat_invoices_zip', 'woo_kigokasa_api_vat_invoices_vat_number', '_kigokasa_pos_number', '_kigokasa_doc_type', '_kigokasa_id_pos');

