-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpo_wcpdf_general_settings', 'wpo_wcpdf_documents_settings_receipt', 'wcpdf_IT_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_invoice_type', 'billing_customer_type', 'billing_cf', 'billing_cf2', 'billing_PEC');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_invoice_type', 'billing_customer_type', 'billing_cf', 'billing_cf2', 'billing_PEC');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_invoice_type', 'billing_customer_type', 'billing_cf', 'billing_cf2', 'billing_PEC');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_invoice_type', 'billing_customer_type', 'billing_cf', 'billing_cf2', 'billing_PEC');

