-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hover_text', 'button_width', 'button_height', 'bg_color', 'bg_color_hover', 'border_radius', 'icon_image', 'icon_color', 'icon_hover_color', 'button_alignment');

