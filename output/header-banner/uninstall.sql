-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('show', 'background_color', 'background_image', 'text_color', 'height_desktop', 'height_tablet', 'height_mobile', 'show_on', 'version', 'text', 'link', 'close_button', 'target_blank');
DELETE FROM wp_usermeta WHERE meta_key IN ('show', 'background_color', 'background_image', 'text_color', 'height_desktop', 'height_tablet', 'height_mobile', 'show_on', 'version', 'text', 'link', 'close_button', 'target_blank');
DELETE FROM wp_termmeta WHERE meta_key IN ('show', 'background_color', 'background_image', 'text_color', 'height_desktop', 'height_tablet', 'height_mobile', 'show_on', 'version', 'text', 'link', 'close_button', 'target_blank');
DELETE FROM wp_commentmeta WHERE meta_key IN ('show', 'background_color', 'background_image', 'text_color', 'height_desktop', 'height_tablet', 'height_mobile', 'show_on', 'version', 'text', 'link', 'close_button', 'target_blank');

