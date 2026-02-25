-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aimg_bg_colors', 'aimg_width', 'aimg_height', 'aimg_title_font_size', 'aimg_is_overlay_image', 'aimg_overlay_position', 'aimg_overlay_images', 'aimg_preview_image_url', 'aimg_settings', 'aimg_version', 'aimg_flash_notices');

