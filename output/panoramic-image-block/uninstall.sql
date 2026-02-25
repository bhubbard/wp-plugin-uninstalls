-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('panoramic_image_block_settings', 'panoramic_image_block_version_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('panoramic_image_block_preferences');
DELETE FROM wp_usermeta WHERE meta_key IN ('panoramic_image_block_preferences');
DELETE FROM wp_termmeta WHERE meta_key IN ('panoramic_image_block_preferences');
DELETE FROM wp_commentmeta WHERE meta_key IN ('panoramic_image_block_preferences');

