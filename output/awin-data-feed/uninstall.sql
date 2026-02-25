-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sw_deliveryMethod', 'sw_categories', 'sw_maxPriceRadio', 'sw_minPrice', 'sw_maxPrice');

