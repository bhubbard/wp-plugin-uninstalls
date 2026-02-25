-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pplb_options', 'pplb_button_position', 'pplb_pass_expires', 'pplb_button_filter');

