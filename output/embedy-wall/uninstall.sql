-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('embedly-wall-api-key', 'embedly-wall-image-width', 'embedly-wall-image-height', 'embedly-wall-snarf-images', 'embedly-wall-ripped-image-height', 'embedly-wall-ripped-image-width');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('unique-string', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('unique-string', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('unique-string', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('unique-string', '_wp_attachment_image_alt');

