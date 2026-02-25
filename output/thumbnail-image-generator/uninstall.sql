-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tgen_bg_colors', 'tgen_width', 'tgen_height', 'tgen_title_font_size', 'tgen_is_overlay_image', 'tgen_overlay_position', 'tgen_overlay_images', 'tgen_preview_image_url', 'tgen_settings', 'tgen_version', 'tgen_flash_notices');

