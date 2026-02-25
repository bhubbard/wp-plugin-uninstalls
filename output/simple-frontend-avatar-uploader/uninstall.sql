-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sfau_custom_avatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('sfau_custom_avatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('sfau_custom_avatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sfau_custom_avatar');

