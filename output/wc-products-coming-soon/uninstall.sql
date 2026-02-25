-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pcs_enable', '_pcs_label', '_pcs_show_countdown', '_pcs_available_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pcs_enable', '_pcs_label', '_pcs_show_countdown', '_pcs_available_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pcs_enable', '_pcs_label', '_pcs_show_countdown', '_pcs_available_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pcs_enable', '_pcs_label', '_pcs_show_countdown', '_pcs_available_date');

