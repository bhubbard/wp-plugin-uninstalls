-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ph_octavius_api_key', 'ph_octavius_server', 'octavius_rocks_realtime_breakpoints');

