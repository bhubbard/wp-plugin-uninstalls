-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mbm_ipak_export_sql', 'mbm_ipak_setting');
DELETE FROM wp_options WHERE option_name LIKE '%_search';

