-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gps-plotter-api-key', 'map-type', 'gps_plotter_options', 'gpsplotter_app_id');

