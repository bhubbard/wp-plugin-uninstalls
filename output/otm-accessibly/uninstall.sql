-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('otm_ac_show_zoom', 'otm_ac_show_cursor', 'otm_ac_show_invert_colors', 'otm_ac_show_contrast', 'otm_ac_show_grayscale', 'otm_ac_show_brightness', 'otm_ac_icon_color', 'otm_ac_branding_color', 'otm_ac_position', 'otm_ac_show_highlight_links', 'otm_ac_show_hide_images', 'otm_ac_show_tooltips', 'otm_ac_show_read_page', 'otm_ac_show_reading_line', 'otm_ac_show_readable_fonts', 'otm_ac_voice_lang', 'otm_ac_show_logo', 'otm_ac_status', 'otm_accessibly_token');

