-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('holoultek_ai_content_generator_provider', 'holoultek_ai_content_generator_api_key', 'holoultek_ai_content_generator_system_message', 'holoultek_ai_content_generator_maximum_length');

