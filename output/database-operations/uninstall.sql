-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tb1', 'tb2', 'qryop', 'charts', 'pwpc_types', 'pwpc_legend', 'ct_ms_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('tb1', 'tb2', 'qryop', 'charts', 'pwpc_types', 'pwpc_legend', 'ct_ms_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('tb1', 'tb2', 'qryop', 'charts', 'pwpc_types', 'pwpc_legend', 'ct_ms_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tb1', 'tb2', 'qryop', 'charts', 'pwpc_types', 'pwpc_legend', 'ct_ms_content');

