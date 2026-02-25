-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbse_migrated_storage', 'dbse_options', 'db_excel_sync_delete_data', 'db_excel_sync_options', 'db_excel_sync_preview_data');

