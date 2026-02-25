-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ast_default_meta_title', 'ast_default_meta_description', 'ast_enable_schema_markup', 'ast_ahrefs_api_key', 'ast_google_analytics_id', 'ast_robots_txt_options', 'ast_sitemap_post_types', 'ast_sitemap_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ast_meta_title', '_ast_meta_description', '_ast_meta_keywords', '_ast_og_title', '_ast_og_description', '_ast_og_image', '_ast_twitter_title', '_ast_twitter_description', '_ast_twitter_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ast_meta_title', '_ast_meta_description', '_ast_meta_keywords', '_ast_og_title', '_ast_og_description', '_ast_og_image', '_ast_twitter_title', '_ast_twitter_description', '_ast_twitter_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ast_meta_title', '_ast_meta_description', '_ast_meta_keywords', '_ast_og_title', '_ast_og_description', '_ast_og_image', '_ast_twitter_title', '_ast_twitter_description', '_ast_twitter_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ast_meta_title', '_ast_meta_description', '_ast_meta_keywords', '_ast_og_title', '_ast_og_description', '_ast_og_image', '_ast_twitter_title', '_ast_twitter_description', '_ast_twitter_image');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

