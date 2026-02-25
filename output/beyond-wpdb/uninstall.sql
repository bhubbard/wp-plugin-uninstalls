-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('beyond_wpdb_data_init_name', 'beyond_wpdb_virtual_column_name');

