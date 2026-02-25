-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gmk_field', '_gmk');
DELETE FROM wp_usermeta WHERE meta_key IN ('gmk_field', '_gmk');
DELETE FROM wp_termmeta WHERE meta_key IN ('gmk_field', '_gmk');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gmk_field', '_gmk');

