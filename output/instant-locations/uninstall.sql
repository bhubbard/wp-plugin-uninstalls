-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gl_db_version', 'instant_locations', 'instant_locations_settings');

