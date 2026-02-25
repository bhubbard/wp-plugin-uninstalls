-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ctviwoo_private_company', '_ctviwoo_vat_id', 'is_vat_exempt', '_vat_number_is_valid', '_vat_number_validated');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ctviwoo_private_company', '_ctviwoo_vat_id', 'is_vat_exempt', '_vat_number_is_valid', '_vat_number_validated');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ctviwoo_private_company', '_ctviwoo_vat_id', 'is_vat_exempt', '_vat_number_is_valid', '_vat_number_validated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ctviwoo_private_company', '_ctviwoo_vat_id', 'is_vat_exempt', '_vat_number_is_valid', '_vat_number_validated');

