-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mjfreeway_options', 'mjfreeway_display_registration_link', 'mjfreeway-products');

