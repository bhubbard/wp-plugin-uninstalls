-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_smart_excerpt_options', 'ai_smart_excerpt_bulk_progress', 'ai_smart_excerpt_feedback', 'ai_smart_excerpt_seo_bulk_progress', 'minLen', 'maxLen', 'useTitle', 'useTags', 'featured', 'more', 'keepHtmlTags', 'numSentences', 'skipManual', 'ai_seo_bulk_needs_continue');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ai_smart_excerpt', '_ai_excerpt_generated_at', '_ai_smart_keywords', '_ai_keywords_generated_at', '_yoast_wpseo_focuskw', '_yoast_wpseo_keywordsynonyms', '_ai_seo_assignments', 'rank_math_focus_keyword', '_aioseo_keywords', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ai_smart_excerpt', '_ai_excerpt_generated_at', '_ai_smart_keywords', '_ai_keywords_generated_at', '_yoast_wpseo_focuskw', '_yoast_wpseo_keywordsynonyms', '_ai_seo_assignments', 'rank_math_focus_keyword', '_aioseo_keywords', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ai_smart_excerpt', '_ai_excerpt_generated_at', '_ai_smart_keywords', '_ai_keywords_generated_at', '_yoast_wpseo_focuskw', '_yoast_wpseo_keywordsynonyms', '_ai_seo_assignments', 'rank_math_focus_keyword', '_aioseo_keywords', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ai_smart_excerpt', '_ai_excerpt_generated_at', '_ai_smart_keywords', '_ai_keywords_generated_at', '_yoast_wpseo_focuskw', '_yoast_wpseo_keywordsynonyms', '_ai_seo_assignments', 'rank_math_focus_keyword', '_aioseo_keywords', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');

