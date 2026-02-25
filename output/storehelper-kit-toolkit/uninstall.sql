-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('storehelper_alt_status', 'storehelper_kit_ai_api_key', 'alt_text_generator_api_key', 'storehelper_kit_alt_api_key', 'storehelper_kit_price_tiers_total', 'storehelper_alt_queue', 'storehelper_kit_llm_language', 'storehelper_llms_cache', 'storehelper_llms_options', 'storehelper_llms_log', 'sidebars_widgets', 'storehelper_kit_llm_model', 'storehelper_kit_llm_temperature', 'storehelper_kit_llm_max_tokens', 'storehelper_kit_llm_tone', 'storehelper_kit_unused_media_ids');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rank_math_focus_keyword', '_yoast_wpseo_metadesc', '_wp_attachment_image_alt', '_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_robots_default', '_aioseo_robots_noindex', '_seopress_robots_index', 'image');
DELETE FROM wp_usermeta WHERE meta_key IN ('rank_math_focus_keyword', '_yoast_wpseo_metadesc', '_wp_attachment_image_alt', '_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_robots_default', '_aioseo_robots_noindex', '_seopress_robots_index', 'image');
DELETE FROM wp_termmeta WHERE meta_key IN ('rank_math_focus_keyword', '_yoast_wpseo_metadesc', '_wp_attachment_image_alt', '_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_robots_default', '_aioseo_robots_noindex', '_seopress_robots_index', 'image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rank_math_focus_keyword', '_yoast_wpseo_metadesc', '_wp_attachment_image_alt', '_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_robots_default', '_aioseo_robots_noindex', '_seopress_robots_index', 'image');

