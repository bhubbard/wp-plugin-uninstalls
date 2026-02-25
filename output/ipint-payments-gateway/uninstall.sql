-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipint_return_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ipint_invoice_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('ipint_invoice_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('ipint_invoice_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ipint_invoice_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ipint_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ipint_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ipint_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ipint_%';

