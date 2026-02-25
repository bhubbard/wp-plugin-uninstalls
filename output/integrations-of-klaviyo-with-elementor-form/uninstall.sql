-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iklaviyoef_app_conf', 'iklaviyoef_db_version', 'iklaviyoef_installed', 'iklaviyoef_version');

