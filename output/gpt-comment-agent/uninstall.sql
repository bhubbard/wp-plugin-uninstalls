-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gptcommentagent_enabled', 'gptcommentagent_openai_api_key', 'gptcommentagent_model', 'gptcommentagent_tone', 'gptcommentagent_max_tokens', 'gptcommentagent_google_cse_id', 'gptcommentagent_google_cse_key', 'gptcommentagent_version', 'gptcommentagent_usage_log', 'gptcommentagent_activity_log', 'gpt_comment_agent_usage_log', 'gptcommentagent_cache');

