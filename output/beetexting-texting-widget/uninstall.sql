-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('secondary_color', 'footer_text', 'phone_number', 'primary_color', 'wpbt-update-setting');

