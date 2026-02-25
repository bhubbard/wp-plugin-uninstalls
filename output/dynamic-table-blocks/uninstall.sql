-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dtbk_keep_tables_on_uninstall', 'dtbk_cron_enabled', 'dtbk-version', 'dtbk_activation_status', 'dtbk_token', 'dtbk_version', 'drbk_cron_lock');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('managedynamic-table-blocks_page_list_dynamic_table_blockscolumnshidden');
DELETE FROM wp_usermeta WHERE meta_key IN ('managedynamic-table-blocks_page_list_dynamic_table_blockscolumnshidden');
DELETE FROM wp_termmeta WHERE meta_key IN ('managedynamic-table-blocks_page_list_dynamic_table_blockscolumnshidden');
DELETE FROM wp_commentmeta WHERE meta_key IN ('managedynamic-table-blocks_page_list_dynamic_table_blockscolumnshidden');

