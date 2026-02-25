-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('GRVATIN_uppercase_fields', 'GRVATIN_version', 'GRVATIN_enable_aade_validation', 'GRVATIN_enable_vies_validation', 'GRVATIN_auto_send_invoice', 'GRVATIN_vat_exempt_eu', 'GRVATIN_vat_exempt_non_eu', 'grvatin_invoice_type_position', 'GRVATIN_article_39a', 'GRVATIN_article_39a_categories', 'GRVATIN_auto_send_email', 'GRVATIN_company_address', 'GRVATIN_company_name', 'GRVATIN_company_vat', 'GRVATIN_company_doy', 'GRVATIN_company_phone', 'GRVATIN_company_email', 'GRVATIN_company_website', 'GRVATIN_company_logo', 'grvatin_invoice_prefix', 'GRVATIN_greek_vat_validation_method', 'GRVATIN_vies_validation', 'GRVATIN_aade_username', 'GRVATIN_aade_password');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_invoice_type', '_billing_vat_number', '_billing_doy', '_billing_business_activity', '_vies_validated', '_vat_exempt_39a');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_invoice_type', '_billing_vat_number', '_billing_doy', '_billing_business_activity', '_vies_validated', '_vat_exempt_39a');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_invoice_type', '_billing_vat_number', '_billing_doy', '_billing_business_activity', '_vies_validated', '_vat_exempt_39a');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_invoice_type', '_billing_vat_number', '_billing_doy', '_billing_business_activity', '_vies_validated', '_vat_exempt_39a');

