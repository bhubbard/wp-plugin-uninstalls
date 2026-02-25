-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('workadu_invoicing_banners', 'workadu_invoicing_logo', 'workadu_api_key', 'workadu_receipt_series', 'workadu_invoice_series', 'workadu_send_to_mail', 'workadu_send_to_aade', 'workadu_cash', 'workadu_credit_card', 'workadu_bank_transfer', 'workadu_vat_number_field', 'workadu_billing_address_field', 'workadu_billing_country_field', 'workadu_series');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('workadu_selected_series', 'aade_mark');
DELETE FROM wp_usermeta WHERE meta_key IN ('workadu_selected_series', 'aade_mark');
DELETE FROM wp_termmeta WHERE meta_key IN ('workadu_selected_series', 'aade_mark');
DELETE FROM wp_commentmeta WHERE meta_key IN ('workadu_selected_series', 'aade_mark');

