-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ecomate_business_logo', 'ecomate_business_name', 'ecomate_business_address', 'ecomate_business_phone', 'ecomate_terms');

