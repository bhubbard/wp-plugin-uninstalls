-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartpablo_secret', 'sp_smartpablo_secret', 'sp_smartpablo_id', 'sp_smartpablo_webhook_order.created', 'sp_smartpablo_webhook_order.updated', 'sp_smartpablo_webhook_order.deleted', 'sp_smartpablo_webhook_order.restored');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('as_company', 'business_id', 'tax_id', 'vat_no');
DELETE FROM wp_usermeta WHERE meta_key IN ('as_company', 'business_id', 'tax_id', 'vat_no');
DELETE FROM wp_termmeta WHERE meta_key IN ('as_company', 'business_id', 'tax_id', 'vat_no');
DELETE FROM wp_commentmeta WHERE meta_key IN ('as_company', 'business_id', 'tax_id', 'vat_no');

