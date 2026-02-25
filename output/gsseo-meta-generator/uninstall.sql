-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_aioseo_title', '_aioseo_description', '_seopress_titles_title', '_seopress_titles_desc', 'gsseo_generated_title', 'gsseo_generated_description', '_aioseo_posts_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_aioseo_title', '_aioseo_description', '_seopress_titles_title', '_seopress_titles_desc', 'gsseo_generated_title', 'gsseo_generated_description', '_aioseo_posts_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_aioseo_title', '_aioseo_description', '_seopress_titles_title', '_seopress_titles_desc', 'gsseo_generated_title', 'gsseo_generated_description', '_aioseo_posts_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_aioseo_title', '_aioseo_description', '_seopress_titles_title', '_seopress_titles_desc', 'gsseo_generated_title', 'gsseo_generated_description', '_aioseo_posts_settings');

