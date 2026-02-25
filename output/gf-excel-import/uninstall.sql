-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gfxl_import_option_separator', 'gfxl_import_option_encoding', 'gfxl_import_option_adminonly', 'gfxl_import_option_clearing');

