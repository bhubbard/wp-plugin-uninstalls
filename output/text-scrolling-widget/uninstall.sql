-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tsw_direction', 'tsw_speed', 'textscrolling_db_version');

