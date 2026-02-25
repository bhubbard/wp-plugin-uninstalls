-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_number', 'billing_neighborhood');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_number', 'billing_neighborhood');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_number', 'billing_neighborhood');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_number', 'billing_neighborhood');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_data';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_data';

