-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcpner_llmstxt_settings', 'mcpner_llmstxt_content_selection', 'mcpner_llmstxt_exclusions', 'mcpner_llmstxt_integration_settings', 'llms_txt_settings', 'llms_txt_webhook_settings', 'llms_txt_pro_installed', 'llms_txt_pro_version', 'mcpner_llmstxt_activation_error', 'mcpner_llmstxt_generation_result', 'llms_txt_license_valid', 'mcpner_llmstxt_content', 'mcpner_llmstxt_content_hash');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mcpner_llmstxt_excluded', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mcpner_llmstxt_excluded', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mcpner_llmstxt_excluded', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mcpner_llmstxt_excluded', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');

