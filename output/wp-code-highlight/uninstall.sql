-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_code_highlight_themes', 'wp_code_highlight_line_numbers', 'wp_code_highlight_button', 'wp_code_highlight_deactivate');

