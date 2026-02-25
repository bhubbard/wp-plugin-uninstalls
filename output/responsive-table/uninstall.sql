-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rt_table_row', 'rt_table_col');
DELETE FROM wp_options WHERE option_name LIKE 'rt_table_header%';

