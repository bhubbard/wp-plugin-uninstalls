-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7_googleMap_api_key', 'cf7_googleMap_enable_geocode', 'cf7_googleMap_enable_places', 'cf7-google-map-notices');

