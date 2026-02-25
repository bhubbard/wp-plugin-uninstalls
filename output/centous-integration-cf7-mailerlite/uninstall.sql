-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mailerlite_api_key', '_mailerlite_field_mappings', '_mailerlite_field_mapping');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mailerlite_api_key', '_mailerlite_field_mappings', '_mailerlite_field_mapping');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mailerlite_api_key', '_mailerlite_field_mappings', '_mailerlite_field_mapping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mailerlite_api_key', '_mailerlite_field_mappings', '_mailerlite_field_mapping');

