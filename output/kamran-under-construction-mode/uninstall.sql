-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ucm_enabled', 'ucm_bg_image', 'ucm_bg_image_id', 'ucm_bg_color', 'ucm_font_size', 'ucm_font_family', 'ucm_heading_text', 'ucm_message_text', 'ucm_logo_url', 'ucm_logo_id');

