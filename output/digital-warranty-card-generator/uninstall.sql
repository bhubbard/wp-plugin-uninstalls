-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_custom_wcgen_all_settings', '_custom_pdfgen_all_settings');

