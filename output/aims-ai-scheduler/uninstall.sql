-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aimsaisc_content_cron_interval', 'aimsaisc_gemini_top_models', 'aimsaisc_gpt_top_models', 'aimsaisc_gpwa_gpt_model', 'aimsaisc_gpwa_api_model', 'aimsaisc_gpwa_gemini_model');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_title', 'rank_math_title', '_aioseop_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_title', 'rank_math_title', '_aioseop_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_title', 'rank_math_title', '_aioseop_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_title', 'rank_math_title', '_aioseop_title');

