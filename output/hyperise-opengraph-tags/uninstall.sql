-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hyperise-snippet');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hyperise_meta_hash', '_hyperise_meta_title', '_hyperise_meta_desc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hyperise_meta_hash', '_hyperise_meta_title', '_hyperise_meta_desc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hyperise_meta_hash', '_hyperise_meta_title', '_hyperise_meta_desc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hyperise_meta_hash', '_hyperise_meta_title', '_hyperise_meta_desc');

