-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('infapg_keywords', 'infapg_category', 'infapg_api_type', 'infapg_openai_api_key', 'infapg_gemini_api_key', 'infapg_grok_api_key', 'infapg_article_language', 'infapg_keyword_index');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_infapg_publish_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_infapg_publish_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_infapg_publish_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_infapg_publish_date');

