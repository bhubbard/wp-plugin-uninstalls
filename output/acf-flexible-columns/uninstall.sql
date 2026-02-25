-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acf_flexcol', 'acf_flexcol_opts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rows', 'rows', '_rows_0_column', 'rows_0_column', '_rows_0_column_0_list_layout', 'rows_0_column_0_list_layout', '_rows_0_column_0_content', 'rows_0_column_0_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rows', 'rows', '_rows_0_column', 'rows_0_column', '_rows_0_column_0_list_layout', 'rows_0_column_0_list_layout', '_rows_0_column_0_content', 'rows_0_column_0_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rows', 'rows', '_rows_0_column', 'rows_0_column', '_rows_0_column_0_list_layout', 'rows_0_column_0_list_layout', '_rows_0_column_0_content', 'rows_0_column_0_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rows', 'rows', '_rows_0_column', 'rows_0_column', '_rows_0_column_0_list_layout', 'rows_0_column_0_list_layout', '_rows_0_column_0_content', 'rows_0_column_0_content');

