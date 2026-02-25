-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mb_sua_custom_avatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('mb_sua_custom_avatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('mb_sua_custom_avatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mb_sua_custom_avatar');

