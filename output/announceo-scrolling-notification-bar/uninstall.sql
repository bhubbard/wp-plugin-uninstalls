-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('annoscno_link_color', 'annoscno_link_hover_color', 'annoscno_enabled', 'annoscno_text', 'annoscno_mode', 'annoscno_speed', 'annoscno_font_size', 'annoscno_font_family', 'annoscno_bg_color', 'annoscno_text_color');

