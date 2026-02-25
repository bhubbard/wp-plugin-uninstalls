-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mortgage_default_heading', 'mortgage_heading_color', 'mortgage_button_color');

