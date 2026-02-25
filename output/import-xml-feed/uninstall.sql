-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('import_xml_url', 'import_type', 'import_limit', 'import_selected_node');
DELETE FROM wp_usermeta WHERE meta_key IN ('import_xml_url', 'import_type', 'import_limit', 'import_selected_node');
DELETE FROM wp_termmeta WHERE meta_key IN ('import_xml_url', 'import_type', 'import_limit', 'import_selected_node');
DELETE FROM wp_commentmeta WHERE meta_key IN ('import_xml_url', 'import_type', 'import_limit', 'import_selected_node');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'import_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'import_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'import_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'import_%';

