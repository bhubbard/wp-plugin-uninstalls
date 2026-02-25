-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_background_color', '_custom_background_image_id', '_custom_background_repeat', '_custom_background_position_x', '_custom_background_position_y', '_custom_background_attachment', '_wp_attachment_is_custom_background');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_background_color', '_custom_background_image_id', '_custom_background_repeat', '_custom_background_position_x', '_custom_background_position_y', '_custom_background_attachment', '_wp_attachment_is_custom_background');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_background_color', '_custom_background_image_id', '_custom_background_repeat', '_custom_background_position_x', '_custom_background_position_y', '_custom_background_attachment', '_wp_attachment_is_custom_background');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_background_color', '_custom_background_image_id', '_custom_background_repeat', '_custom_background_position_x', '_custom_background_position_y', '_custom_background_attachment', '_wp_attachment_is_custom_background');

