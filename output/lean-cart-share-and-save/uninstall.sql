-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lean_csns_settings', 'lean_csns_db_version', 'lean_csns_first_install');

