-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_moon_api_key', '_moon_default_position', '_moon_default_effect', '_moon_default_bgcolor', '_moon_default_primcolor', '_moon_default_reflect', '_moon_default_indicator', '_moon_default_edge', '_moon_default_speed');

