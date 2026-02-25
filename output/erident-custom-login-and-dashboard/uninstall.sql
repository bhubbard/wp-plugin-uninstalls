-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_erident_settings', 'udb_migration_from_erident', 'udb_settings', 'udb_branding', 'udb_login');

