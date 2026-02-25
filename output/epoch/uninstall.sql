-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('epoch_ver');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sample_meta', '_sample_meta', 'array_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('sample_meta', '_sample_meta', 'array_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('sample_meta', '_sample_meta', 'array_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sample_meta', '_sample_meta', 'array_meta');

