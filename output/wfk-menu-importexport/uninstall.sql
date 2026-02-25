-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wfktyh_menu_import_export', 'wfktyh_menu_import_export_version');

