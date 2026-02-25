-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fully_is_layout', '_fully_background_color', '_fully_background_image_id', '_fully_background_pattern', '_fully_background_attachment', '_fully_background_repeat', '_wp_attachment_is_fully_background');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fully_is_layout', '_fully_background_color', '_fully_background_image_id', '_fully_background_pattern', '_fully_background_attachment', '_fully_background_repeat', '_wp_attachment_is_fully_background');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fully_is_layout', '_fully_background_color', '_fully_background_image_id', '_fully_background_pattern', '_fully_background_attachment', '_fully_background_repeat', '_wp_attachment_is_fully_background');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fully_is_layout', '_fully_background_color', '_fully_background_image_id', '_fully_background_pattern', '_fully_background_attachment', '_fully_background_repeat', '_wp_attachment_is_fully_background');

