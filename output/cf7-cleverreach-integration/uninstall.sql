-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7-cleverreach_token');
DELETE FROM wp_options WHERE option_name LIKE '%api-token';
DELETE FROM wp_options WHERE option_name LIKE '%api-refresh-token';
DELETE FROM wp_options WHERE option_name LIKE '%api-expires';
DELETE FROM wp_options WHERE option_name LIKE '%version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpcf7-cleverreach_options', '_wpcf7-cleverreach_attribute_mapping', '_wpcf7-cleverreach_global_attribute_mapping', '_wpcf7-cleverreach_options_mapping', '_wpcf7-cleverreach_field_mapping', '_wpcf7-cleverreach_option_mapping');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpcf7-cleverreach_options', '_wpcf7-cleverreach_attribute_mapping', '_wpcf7-cleverreach_global_attribute_mapping', '_wpcf7-cleverreach_options_mapping', '_wpcf7-cleverreach_field_mapping', '_wpcf7-cleverreach_option_mapping');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpcf7-cleverreach_options', '_wpcf7-cleverreach_attribute_mapping', '_wpcf7-cleverreach_global_attribute_mapping', '_wpcf7-cleverreach_options_mapping', '_wpcf7-cleverreach_field_mapping', '_wpcf7-cleverreach_option_mapping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpcf7-cleverreach_options', '_wpcf7-cleverreach_attribute_mapping', '_wpcf7-cleverreach_global_attribute_mapping', '_wpcf7-cleverreach_options_mapping', '_wpcf7-cleverreach_field_mapping', '_wpcf7-cleverreach_option_mapping');

