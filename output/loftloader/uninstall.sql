-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loftloader_lite_version', 'loftloader-custom-settings', 'loftloader_main_switch', 'loftloader_show_range', 'loftloader_bg_color', 'loftloader_bg_opacity', 'loftloader_bg_animation', 'loftloader_loader_type', 'loftloader_loader_color', 'loftloader_custom_img', 'loftloader_img_width');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('loftloader_page_shortcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('loftloader_page_shortcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('loftloader_page_shortcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('loftloader_page_shortcode');

