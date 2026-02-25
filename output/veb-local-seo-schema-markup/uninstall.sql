-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('business_name', 'street_address', 'locality', 'region', 'postal_code', 'country', 'phone', 'opening_hours', 'price_range');

