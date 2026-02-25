-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quickpress_ai_serpstack_api_key', 'quickpress_ai_api_key', 'quickpress_ai_selected_model', 'quickpress_ai_system_prompt', 'quickpress_ai_system_prompt_option', 'quickpress_ai_title_prompt_template', 'quickpress_ai_content_prompt_template', 'quickpress_ai_excerpt_prompt_template', 'quickpress_ai_temperature', 'quickpress_ai_frequency_penalty', 'quickpress_ai_presence_penalty', 'quickpress_ai_generate_timeout', 'quickpress_ai_encryption_key', 'quickpress_ai_serpstack_api_usage', 'quickpress_ai_serpstack_plan');
DELETE FROM wp_options WHERE option_name LIKE '%_timestamp';

