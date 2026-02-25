-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wk_rp_addon_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wk_rp_addon_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wk_rp_addon_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wk_rp_addon_data');

