-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('usz_db_configured', 'usz_integration_cf7', 'usz_integration_ninja', 'usz_integration_gravity', 'usz_integration_formidable');

