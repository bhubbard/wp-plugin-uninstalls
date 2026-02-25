-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trit_which_taxonomy', 'trit_position', 'trit_custom_text', 'trit_color', 'trit_background_color', 'trit_font_size', 'trit_uppercase', 'trit_who_can_see');

