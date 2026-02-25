-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_translate_new_post', 'ai_translate_prompt', 'ai_translate_llm', 'ai_translate_claude_key', 'ai_translate_claude_model', 'ai_translate_openai_key', 'ai_translate_openai_org', 'ai_translate_openai_model', 'ai_translate_gemini_model', 'ai_translate_gemini_key');

