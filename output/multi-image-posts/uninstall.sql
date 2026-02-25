-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_focuskw_text_input', '_yoast_wpseo_focuskw', 'pin_manual', 'pin_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_focuskw_text_input', '_yoast_wpseo_focuskw', 'pin_manual', 'pin_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_focuskw_text_input', '_yoast_wpseo_focuskw', 'pin_manual', 'pin_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_focuskw_text_input', '_yoast_wpseo_focuskw', 'pin_manual', 'pin_images');

