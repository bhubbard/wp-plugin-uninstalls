-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('LFS_lao_font');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('LFS_fonts');
DELETE FROM wp_usermeta WHERE meta_key IN ('LFS_fonts');
DELETE FROM wp_termmeta WHERE meta_key IN ('LFS_fonts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('LFS_fonts');

