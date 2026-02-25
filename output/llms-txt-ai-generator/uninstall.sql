-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('llmstxtaigen_openrouter_api_key', 'llmstxtaigen_enable_batch_processing', 'llmstxtaigen_ai_batch_size', 'llms_openrouter_api_key', 'llmstxtaigen_enable_ai_descriptions', 'llmstxtaigen_saved_options', 'llmstxtaigen_content_language', 'llms_enable_batch_processing', 'llms_enable_content_cleaning', 'llms_custom_translations', 'llms_content_language', 'llmstxtaigen_enable_content_cleaning');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');

