-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_t_key_01', '_t_key_02', '_t_key_03', '_t_key_04', '_t_key_05', '_key_01', '_key_02', '_key_03', '_key_04', '_key_05', '_t_t_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_t_key_01', '_t_key_02', '_t_key_03', '_t_key_04', '_t_key_05', '_key_01', '_key_02', '_key_03', '_key_04', '_key_05', '_t_t_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_t_key_01', '_t_key_02', '_t_key_03', '_t_key_04', '_t_key_05', '_key_01', '_key_02', '_key_03', '_key_04', '_key_05', '_t_t_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_t_key_01', '_t_key_02', '_t_key_03', '_t_key_04', '_t_key_05', '_key_01', '_key_02', '_key_03', '_key_04', '_key_05', '_t_t_key');

