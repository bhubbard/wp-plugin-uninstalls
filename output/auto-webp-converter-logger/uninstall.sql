-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autoweco_convert_images_to_webp_options', 'autoweco_conversion_errors', 'autoweco_settings_reset');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_autoweco_pending_conversion', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_autoweco_pending_conversion', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_autoweco_pending_conversion', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_autoweco_pending_conversion', '_wp_attached_file');

