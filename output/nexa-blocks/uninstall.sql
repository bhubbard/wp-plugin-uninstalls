-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nexa_gmap_api_key', 'nexa_blocks_settings', 'nexa_blocks', 'nexa_modules', 'nexa_apis', 'nexa_favorites', 'nexa_templates');
DELETE FROM wp_options WHERE option_name LIKE 'nexa_block_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

