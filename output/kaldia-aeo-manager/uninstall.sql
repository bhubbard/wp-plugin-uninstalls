-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kaldia_openai_model', 'kaldia_max_tokens', 'kaldia_temperature', 'kaldia_api_valid', 'kaldia_openai_key', 'kaldia_cipher_seed');
DELETE FROM wp_options WHERE option_name LIKE 'kaldia_models_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kaldia_faq', '_kaldia_schema_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kaldia_faq', '_kaldia_schema_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kaldia_faq', '_kaldia_schema_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kaldia_faq', '_kaldia_schema_type');

