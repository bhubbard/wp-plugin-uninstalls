-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_ascendoor_logo_slide', '_ascendoor_logo_slide_style');

