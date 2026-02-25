-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('akmsich_activate', 'akmsich_theme_color', 'akmsich_numbers', 'akmsich_chat_heading', 'akmsich_chat_sub_heading', 'akmsich_label', 'akmsich_fixed_button_label');

