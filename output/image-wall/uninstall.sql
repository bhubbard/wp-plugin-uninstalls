-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('image_wall_regen', 'image_wall_regen_method', 'image_wall_regen_salt');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tmn-iw-hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('tmn-iw-hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('tmn-iw-hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tmn-iw-hash');

