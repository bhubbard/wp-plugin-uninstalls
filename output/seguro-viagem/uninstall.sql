-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('travel_insurance_token', 'travel_insurance_width', 'travel_insurance_height');

