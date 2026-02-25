-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('takbull_invoice_enabled', 'api_key_invoice', 'api_secret_invoice', 'takbull_invoice_document_type', 'takbull_invoice_is_taxtable', 'takbull_invoice_send_email', 'takbull_invoice_send_sms', 'woocommerce_takbull_settings', 'woocommerce_takbull_invoice_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('takbull_invoice_lock', 'document_number', 'document_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('takbull_invoice_lock', 'document_number', 'document_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('takbull_invoice_lock', 'document_number', 'document_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('takbull_invoice_lock', 'document_number', 'document_type');

