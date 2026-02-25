-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mailchimp_api_key', '_mailchimp_field_mappings', '_mailchimp_field_mapping');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mailchimp_api_key', '_mailchimp_field_mappings', '_mailchimp_field_mapping');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mailchimp_api_key', '_mailchimp_field_mappings', '_mailchimp_field_mapping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mailchimp_api_key', '_mailchimp_field_mappings', '_mailchimp_field_mapping');

