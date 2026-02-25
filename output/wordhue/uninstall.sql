-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('philips_hue_settings', 'codex_nas_lighting_lights', 'codex_nas_lighting_lights_raw', 'codex_nas_lighting_sensors', 'codex_nas_lighting_sensors_raw');

