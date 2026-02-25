-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_wc_import_google_sheet_gs_token', 'plugin_wc_import_google_sheet_options');

