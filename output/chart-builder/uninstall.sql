-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ays_chart_builder_upgrade_plugin', 'ays_chart_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%db_tables';
DELETE FROM wp_options WHERE option_name LIKE '%db_table_mapping';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cb_charts_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('cb_charts_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('cb_charts_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cb_charts_per_page');

