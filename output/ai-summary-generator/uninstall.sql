-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_summary_generator_api_url', 'ai_summary_generator_api_token', 'ai_summary_generator_model_name', 'ai_summary_generator_prompt', 'ai_summary_generator_homepage_override', 'ai_summary_generator_update_on_post_update', 'ai_summary_generator_max_retries', 'ai_summary_homepage_override');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ai_summary_generator_summary', '_ai_summary_generator_last_modified');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ai_summary_generator_summary', '_ai_summary_generator_last_modified');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ai_summary_generator_summary', '_ai_summary_generator_last_modified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ai_summary_generator_summary', '_ai_summary_generator_last_modified');

