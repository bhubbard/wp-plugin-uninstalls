-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_app_db_version', 'ea_excel_columns', 'ea_hide_newsletter');

