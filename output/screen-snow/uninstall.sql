-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('snow_density', 'snow_color', 'snow_speed', 'snow_size');

