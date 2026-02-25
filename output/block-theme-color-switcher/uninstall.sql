-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('block_theme_color_switcher_button_text', 'block_theme_color_switcher_position', 'block_theme_color_switcher_top');

