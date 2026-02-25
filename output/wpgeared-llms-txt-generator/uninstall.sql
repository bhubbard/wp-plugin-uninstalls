-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpg_llmstxt_enabled', 'wpg_llmstxt_post_types', 'wpg_llmstxt_include_categories', 'wpg_llmstxt_include_tags', 'wpg_llmstxt_site_description', 'wpg_llmstxt_excluded_ids', 'wpg_llmstxt_crawler_detection', 'wpg_llmstxt_cache_duration', 'wpg_llmstxt_flush_rewrite_rules');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_robots_noindex', '_seopress_robots_index');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_robots_noindex', '_seopress_robots_index');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_robots_noindex', '_seopress_robots_index');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_robots_noindex', '_seopress_robots_index');

