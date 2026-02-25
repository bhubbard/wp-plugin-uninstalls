-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('media_genie_disabled_image_sizes', 'media_genie_enable_retina', 'media_genie_rename_file');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_media_genie_default_folder', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_media_genie_default_folder', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_media_genie_default_folder', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_media_genie_default_folder', '_wp_attached_file');

