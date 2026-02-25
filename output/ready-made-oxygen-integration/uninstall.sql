-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('readoxin_class_sync_mode', 'readoxin_class_storage_type', 'ct_components_classes', 'ct_style_folders', 'oxygen_options_autoload', 'oxygen_vsb_google_fonts_cache', 'readoxin_font_mappings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_readoxin_file_hash', '_readoxin_filesize');
DELETE FROM wp_usermeta WHERE meta_key IN ('_readoxin_file_hash', '_readoxin_filesize');
DELETE FROM wp_termmeta WHERE meta_key IN ('_readoxin_file_hash', '_readoxin_filesize');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_readoxin_file_hash', '_readoxin_filesize');

