-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('genwave_encryption_key', 'genwave_tables_installed', 'genwave_installation_date', 'genwave_admin_option', 'genwave_token_balance', 'genwave_rest_api_flushed_v2', 'genwave_mybusiness_settings', 'genwave_litellm_api_key', 'genwave_api_base_url', 'genwave_api_key', 'genwave_default_model', 'genwave_default_provider', 'genwave_rate_limit', 'genwave_license_key', 'genwave_db_version', 'update_plugins', 'update_themes', 'update_core');
DELETE FROM wp_options WHERE option_name LIKE 'genwave_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_short_description', '_ai_generated', '_ai_source_url', '_ai_generated_date', '_genwave_generation_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_short_description', '_ai_generated', '_ai_source_url', '_ai_generated_date', '_genwave_generation_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_short_description', '_ai_generated', '_ai_source_url', '_ai_generated_date', '_genwave_generation_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_short_description', '_ai_generated', '_ai_source_url', '_ai_generated_date', '_genwave_generation_method');

