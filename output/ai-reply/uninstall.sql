-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('openai_api_key', 'openai_max_tokens', 'openai_temperature', 'openai_model');

