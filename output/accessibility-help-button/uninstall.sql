-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aa-bg-color', 'aa-bg-hover-color', 'aa-text-color', 'aa-text-hover-color', 'border-radius', 'x-padding', 'y-padding', 'font-size', 'font-weight', 'button-text', 'phone_number', 'button-type', 'button-position', 'ass-label', 'hide-button');

