-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stb_version', 'stb_pointers', 'stb_db_version', 'SpecialTextBoxesAdminSettings', 'SpecialTextBoxesAdminOptions');

