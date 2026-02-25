-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpchts_gky_music', 'decoration_type', 'wpchts_gky_image_frame', 'wpchts_gky_font', 'xmas_decoration_body_padding_top', 'Activated_Plugin');

