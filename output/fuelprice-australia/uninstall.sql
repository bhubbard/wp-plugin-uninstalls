-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fuelprice_cities', 'fuelprice_widget_types', 'fuelprice_fuel_types');

