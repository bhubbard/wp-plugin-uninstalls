-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yesh_invoice_businesses', 'custom_installments', 'woocommerce_yeshin_settings', '_yeshin_send_invoice_sms');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yesh_business_id', '_wc_yeshinvoice_response', '_wc_yeshinvoice_invoice_url', '_custom_invoice_generated', '_yeshin_response_code', '_yeshin_payment_json_res', '_yeshin_taxn_id', '_enable_renta_option', '_text_input_y');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yesh_business_id', '_wc_yeshinvoice_response', '_wc_yeshinvoice_invoice_url', '_custom_invoice_generated', '_yeshin_response_code', '_yeshin_payment_json_res', '_yeshin_taxn_id', '_enable_renta_option', '_text_input_y');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yesh_business_id', '_wc_yeshinvoice_response', '_wc_yeshinvoice_invoice_url', '_custom_invoice_generated', '_yeshin_response_code', '_yeshin_payment_json_res', '_yeshin_taxn_id', '_enable_renta_option', '_text_input_y');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yesh_business_id', '_wc_yeshinvoice_response', '_wc_yeshinvoice_invoice_url', '_custom_invoice_generated', '_yeshin_response_code', '_yeshin_payment_json_res', '_yeshin_taxn_id', '_enable_renta_option', '_text_input_y');

