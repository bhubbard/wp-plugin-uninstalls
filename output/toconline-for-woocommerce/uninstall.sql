-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tocwoo_countries', 'tocwoo_tax_exemption_reasons', 'tocwoo_invoice_series', 'tocwoo_credit-note_series', 'tocwoo_notice-of-settlement_series', 'tocwoo_tax_rates', 'woocommerce_tax_round_at_subtotal', 'tocwoo_api_clientid', 'tocwoo_api_secret', 'tocwoo_api_url', 'tocwoo_api_auth_url', 'tocwoo_api_auth_redirect_url', 'tocwoo_api_connected', 'tocwoo_trn_method', 'woocommerce_email_footer_text', 'tocwoo_tax_exemption_reason_id', 'tocwoo_invoice_series_id', 'tocwoo_invoices_generated', 'toconline_shipping_ids', 'toconline_shipping_item_codes');
DELETE FROM wp_options WHERE option_name LIKE '%_email_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('toconline_invoice_error', 'tocwoo_enabled', 'tocwoo_trn_method', 'toconline_invoice_id', 'tocwoo_version', 'toconline_invoice', 'toconline_invoice_doc_num', 'toconline_invoice_url', 'toconline_customer', 'toconline_items', 'toconline_item_id', 'toconline_item_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('toconline_invoice_error', 'tocwoo_enabled', 'tocwoo_trn_method', 'toconline_invoice_id', 'tocwoo_version', 'toconline_invoice', 'toconline_invoice_doc_num', 'toconline_invoice_url', 'toconline_customer', 'toconline_items', 'toconline_item_id', 'toconline_item_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('toconline_invoice_error', 'tocwoo_enabled', 'tocwoo_trn_method', 'toconline_invoice_id', 'tocwoo_version', 'toconline_invoice', 'toconline_invoice_doc_num', 'toconline_invoice_url', 'toconline_customer', 'toconline_items', 'toconline_item_id', 'toconline_item_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('toconline_invoice_error', 'tocwoo_enabled', 'tocwoo_trn_method', 'toconline_invoice_id', 'tocwoo_version', 'toconline_invoice', 'toconline_invoice_doc_num', 'toconline_invoice_url', 'toconline_customer', 'toconline_items', 'toconline_item_id', 'toconline_item_code');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_doc_num';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_doc_num';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_doc_num';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_doc_num';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'toconline_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'toconline_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'toconline_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'toconline_%';

