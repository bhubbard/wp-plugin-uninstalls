-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('crudiator_last_query', '_custom_setting_json', '_table_name', '_menu_type', '_capability', '_menu_slug');
DELETE FROM wp_usermeta WHERE meta_key IN ('crudiator_last_query', '_custom_setting_json', '_table_name', '_menu_type', '_capability', '_menu_slug');
DELETE FROM wp_termmeta WHERE meta_key IN ('crudiator_last_query', '_custom_setting_json', '_table_name', '_menu_type', '_capability', '_menu_slug');
DELETE FROM wp_commentmeta WHERE meta_key IN ('crudiator_last_query', '_custom_setting_json', '_table_name', '_menu_type', '_capability', '_menu_slug');

