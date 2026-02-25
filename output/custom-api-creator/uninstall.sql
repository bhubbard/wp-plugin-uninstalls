-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cac_plugin_endpoint', '_cac_plugin_sections', '_cac_plugin_access_type', '_cac_plugin_roles');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cac_plugin_endpoint', '_cac_plugin_sections', '_cac_plugin_access_type', '_cac_plugin_roles');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cac_plugin_endpoint', '_cac_plugin_sections', '_cac_plugin_access_type', '_cac_plugin_roles');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cac_plugin_endpoint', '_cac_plugin_sections', '_cac_plugin_access_type', '_cac_plugin_roles');

