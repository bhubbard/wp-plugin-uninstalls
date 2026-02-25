-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iran_agency_map_settings', 'iran_agency_map_db_version');

