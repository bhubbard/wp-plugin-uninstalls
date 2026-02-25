-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('title_ai_openai_key', 'title_ai_tone', 'title_ai_max_length');

