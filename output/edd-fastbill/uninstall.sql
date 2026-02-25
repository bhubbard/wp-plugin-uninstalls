-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edd_cfm_id', 'edd_fastbill_error_log');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edd_payment_meta', '_fastbill_invoice_id', '_fastbill_document_url', 'edd-checkout-fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edd_payment_meta', '_fastbill_invoice_id', '_fastbill_document_url', 'edd-checkout-fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edd_payment_meta', '_fastbill_invoice_id', '_fastbill_document_url', 'edd-checkout-fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edd_payment_meta', '_fastbill_invoice_id', '_fastbill_document_url', 'edd-checkout-fields');

