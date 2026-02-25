-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('respopcf7_theme_color', 'respopcf7_autohide_delay', 'respopcf7_show_confirm_button', 'respopcf7_use_backdrop', 'respopcf7_confirm_button_text', 'respopcf7_use_toast', 'respopcf7_position', 'respopcf7_allow_outside_click', 'respopcf7_allow_escape_key', 'respopcf7_show_close_button');

