-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_indo_ongkir_resi', '_indo_ongkir_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_indo_ongkir_resi', '_indo_ongkir_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_indo_ongkir_resi', '_indo_ongkir_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_indo_ongkir_resi', '_indo_ongkir_date');

