-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('draftseo_settings', 'draftseo_api_key_encrypted', 'draftseo_platform_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'draftseo_heading_text', 'draftseo_image_url_hash', 'draftseo_original_url', 'draftseo_word_count', 'draftseo_ai_model', 'draftseo_blog_id', 'draftseo_faq_schema', 'draftseo_last_updated', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_aioseo_keywords', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_yoast_wpseo_canonical', 'rank_math_canonical_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'draftseo_heading_text', 'draftseo_image_url_hash', 'draftseo_original_url', 'draftseo_word_count', 'draftseo_ai_model', 'draftseo_blog_id', 'draftseo_faq_schema', 'draftseo_last_updated', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_aioseo_keywords', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_yoast_wpseo_canonical', 'rank_math_canonical_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'draftseo_heading_text', 'draftseo_image_url_hash', 'draftseo_original_url', 'draftseo_word_count', 'draftseo_ai_model', 'draftseo_blog_id', 'draftseo_faq_schema', 'draftseo_last_updated', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_aioseo_keywords', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_yoast_wpseo_canonical', 'rank_math_canonical_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'draftseo_heading_text', 'draftseo_image_url_hash', 'draftseo_original_url', 'draftseo_word_count', 'draftseo_ai_model', 'draftseo_blog_id', 'draftseo_faq_schema', 'draftseo_last_updated', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_aioseo_keywords', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_yoast_wpseo_canonical', 'rank_math_canonical_url');

