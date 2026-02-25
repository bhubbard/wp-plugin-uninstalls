-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_optimizer_api_key', 'ai_optimizer_endpoint', 'ai_optimizer_model', 'ai_optimizer_temperature', 'ai_optimizer_max_tokens', 'ai_optimizer_system_message', 'ai_optimizer_user_message');

