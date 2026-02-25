-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('air-quality-mk_options', 'air_quality_mk_db_version');

