-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('golfhs_settings', 'golfhs_db_version', 'golfhs_version', 'golf_handicap_slope_settings');

