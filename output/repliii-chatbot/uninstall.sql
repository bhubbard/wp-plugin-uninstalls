-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('repliii_enabled', 'repliii_user_id', 'repliii_button_color', 'repliii_button_opacity', 'repliii_header_title', 'repliii_header_bg', 'repliii_header_text', 'repliii_placeholder', 'repliii_svg_logo');

