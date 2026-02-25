-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mds_db_version', 'monthly_data_sheets_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mds_managers', 'mds_row_names', 'mds_column_names');
DELETE FROM wp_usermeta WHERE meta_key IN ('mds_managers', 'mds_row_names', 'mds_column_names');
DELETE FROM wp_termmeta WHERE meta_key IN ('mds_managers', 'mds_row_names', 'mds_column_names');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mds_managers', 'mds_row_names', 'mds_column_names');

