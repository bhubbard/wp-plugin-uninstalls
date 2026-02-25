-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rsorangetech_columns', 'rsorangetech_layout', 'rsorangetech_lightbox', 'rsorangetech_lazyload_enable', 'rsorangetech_gallery_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rsorangetech_images', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('rsorangetech_images', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('rsorangetech_images', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rsorangetech_images', '_wp_attachment_image_alt');

