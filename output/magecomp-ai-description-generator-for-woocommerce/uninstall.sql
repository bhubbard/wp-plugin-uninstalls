-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('descgpt_api_key', 'descgpt_model', 'descgpt_temperature', 'descgpt_language', 'descgpt_recommendation_prompt', 'settings_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_descgpt_last_generated', '_descgpt_language', '_descgpt_generated_full', '_descgpt_enable_ai', '_descgpt_generated_desc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_descgpt_last_generated', '_descgpt_language', '_descgpt_generated_full', '_descgpt_enable_ai', '_descgpt_generated_desc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_descgpt_last_generated', '_descgpt_language', '_descgpt_generated_full', '_descgpt_enable_ai', '_descgpt_generated_desc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_descgpt_last_generated', '_descgpt_language', '_descgpt_generated_full', '_descgpt_enable_ai', '_descgpt_generated_desc');

