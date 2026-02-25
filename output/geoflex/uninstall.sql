-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geoflex_notices', 'geoflex', 'geoflex_list');

