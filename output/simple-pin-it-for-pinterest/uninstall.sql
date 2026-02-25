-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pinsavepinterest_pin_text', 'pinsavepinterest_button_bg_color', 'pinsavepinterest_font_color', 'pinsavepinterest_button_location', 'pinsavepinterest_autohide');

