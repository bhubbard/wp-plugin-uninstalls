-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tbswebpressor_webp_quality', 'tbswebpressor_convert_on_upload', 'tbswebpressor_compression_quality', 'tbswebpressor_convert_to_webp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tbswebpressor_webp_path');
DELETE FROM wp_usermeta WHERE meta_key IN ('tbswebpressor_webp_path');
DELETE FROM wp_termmeta WHERE meta_key IN ('tbswebpressor_webp_path');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tbswebpressor_webp_path');

