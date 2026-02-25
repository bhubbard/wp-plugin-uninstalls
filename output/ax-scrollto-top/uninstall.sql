-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ax_icon_select', 'ax_width', 'ax_height', 'ax_background_color', 'ax_text_color', 'ax_font_size', 'ax_padding');

