-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc-to-invoicing-plus_api_key', 'wc-to-invoicing-plus_api_company');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_invoice_id', '_invoice_number', '_invoice_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_invoice_id', '_invoice_number', '_invoice_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_invoice_id', '_invoice_number', '_invoice_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_invoice_id', '_invoice_number', '_invoice_status');

