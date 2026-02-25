-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('poo_chk_show', 'poo_sel_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('poo_chk_show', 'poo_sel_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('poo_chk_show', 'poo_sel_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('poo_chk_show', 'poo_sel_country');

