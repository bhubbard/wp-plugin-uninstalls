-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_takbull_settings', 'wc_takbull_show_changed_keys_notice', 'wc_takbull_version');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_takbull_tokenize_payment', '_secure_sms_uniq_id', 'takbull_invoice_lock', 'document_number', 'document_type', '_wc_takbull_token', '_is_secure_sms_validation');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_takbull_tokenize_payment', '_secure_sms_uniq_id', 'takbull_invoice_lock', 'document_number', 'document_type', '_wc_takbull_token', '_is_secure_sms_validation');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_takbull_tokenize_payment', '_secure_sms_uniq_id', 'takbull_invoice_lock', 'document_number', 'document_type', '_wc_takbull_token', '_is_secure_sms_validation');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_takbull_tokenize_payment', '_secure_sms_uniq_id', 'takbull_invoice_lock', 'document_number', 'document_type', '_wc_takbull_token', '_is_secure_sms_validation');

