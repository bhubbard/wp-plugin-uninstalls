-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_camoo_sso_options', 'wp_camoo_sso_db_version');

