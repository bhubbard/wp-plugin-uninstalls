-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_brevo_api_key', '_brevo_field_mappings', '_brevo_field_mapping');
DELETE FROM wp_usermeta WHERE meta_key IN ('_brevo_api_key', '_brevo_field_mappings', '_brevo_field_mapping');
DELETE FROM wp_termmeta WHERE meta_key IN ('_brevo_api_key', '_brevo_field_mappings', '_brevo_field_mapping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_brevo_api_key', '_brevo_field_mappings', '_brevo_field_mapping');

