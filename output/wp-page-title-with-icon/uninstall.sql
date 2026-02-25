-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpptwi_icon', '_wpptwi_icon_color', '_wpptwi_icon_size');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpptwi_icon', '_wpptwi_icon_color', '_wpptwi_icon_size');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpptwi_icon', '_wpptwi_icon_color', '_wpptwi_icon_size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpptwi_icon', '_wpptwi_icon_color', '_wpptwi_icon_size');

