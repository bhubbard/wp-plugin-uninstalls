-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('llms_gateway_pagseguro-v1_logging_enabled', 'llms_gateway_pagseguro-v1_payment_instructions', 'llms_gateway_pagseguro-v1_plugin_license', 'llms_gateway_pagseguro-v1_email', 'llms_gateway_pagseguro-v1_token_key', 'llms_gateway_pagseguro-v1_env_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_llms_order_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_llms_order_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_llms_order_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_llms_order_key');

