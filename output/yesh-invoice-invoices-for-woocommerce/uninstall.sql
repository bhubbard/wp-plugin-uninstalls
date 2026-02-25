-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wc_yeshinvoices_test_secret_key', '_wc_yeshinvoices_test_user_key', '_wc_yeshinvoices_title', '_wc_yeshinvoices_notes', '_wc_yeshinvoices_notes_bottom', '_wc_yeshinvoices_currency_id', '_wc_yeshinvoices_invoice_lang_id', '_wc_yeshinvoices_document_type', '_wc_yeshinvoices_send_invoice_sms', '_wc_yeshinvoices_send_invoice_email', '_wc_yeshinvoices_send_invoice_shipping', '_wc_yeshinvoices_includetax', '_wc_yeshthanktitle', '_wc_yeshthankbody');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_yeshinvoice_invoice_url', '_wc_yeshinvoice_response', '_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_yeshinvoice_invoice_url', '_wc_yeshinvoice_response', '_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_yeshinvoice_invoice_url', '_wc_yeshinvoice_response', '_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_yeshinvoice_invoice_url', '_wc_yeshinvoice_response', '_payment_method');

