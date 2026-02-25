-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aft_db_version', 'aft_themes_array', 'aft_options_array', 'aft_options_by_array');

