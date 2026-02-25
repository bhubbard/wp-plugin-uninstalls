-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_myhl_box_code_top', 'wp_myhl_box_code_bottom');

