-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbcd_tcstix_button_text', 'cbcd_tcstix_button_color');

