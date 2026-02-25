-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('custom_image_repeat', 'main_color_post', 'main_color_head', 'main_color_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('custom_image_repeat', 'main_color_post', 'main_color_head', 'main_color_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('custom_image_repeat', 'main_color_post', 'main_color_head', 'main_color_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('custom_image_repeat', 'main_color_post', 'main_color_head', 'main_color_content');

