-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('donoco_global_copy_protection');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_donoco_copy_protection');
DELETE FROM wp_usermeta WHERE meta_key IN ('_donoco_copy_protection');
DELETE FROM wp_termmeta WHERE meta_key IN ('_donoco_copy_protection');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_donoco_copy_protection');

