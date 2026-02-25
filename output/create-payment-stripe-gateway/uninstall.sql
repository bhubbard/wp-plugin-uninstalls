-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_mx_create_paymetn_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_meta_sent_to_client_data', '_meta_bill_confirm', '_meta_offer_data', '_meta_invoice_number_data', '_meta_customer_email_data', '_meta_url_hash_data', '_meta_url_to_client_data', '_meta_of_amount_data', '_meta_currency_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_meta_sent_to_client_data', '_meta_bill_confirm', '_meta_offer_data', '_meta_invoice_number_data', '_meta_customer_email_data', '_meta_url_hash_data', '_meta_url_to_client_data', '_meta_of_amount_data', '_meta_currency_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_meta_sent_to_client_data', '_meta_bill_confirm', '_meta_offer_data', '_meta_invoice_number_data', '_meta_customer_email_data', '_meta_url_hash_data', '_meta_url_to_client_data', '_meta_of_amount_data', '_meta_currency_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_meta_sent_to_client_data', '_meta_bill_confirm', '_meta_offer_data', '_meta_invoice_number_data', '_meta_customer_email_data', '_meta_url_hash_data', '_meta_url_to_client_data', '_meta_of_amount_data', '_meta_currency_data');

