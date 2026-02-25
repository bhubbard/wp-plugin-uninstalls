-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('planet9_available_languages', 'planet9_openai_api_key', 'planet9_knowledge_base', 'planet9_openai_system_prompt', 'planet9_classic_editor_enabled');

