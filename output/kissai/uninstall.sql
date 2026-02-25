-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('openai_api_key', 'api_key_type', 'kissai_db_version', 'kissai_service_key');
DELETE FROM wp_options WHERE option_name LIKE 'kissai_vars_nonce_%';

