-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('number_slides', 'header_color', 'text_color', 'display_header', 'display_text');

