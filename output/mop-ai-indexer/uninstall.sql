-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mop_ai_indexer_config', 'mop_ai_indexer_iset', 'mop_ai_indexer_last_generated', 'mop_ai_indexer_last_generated_file', 'rewrite_rules');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', 'mop_ai_indexer_exclude', '_wp_robots_noindex', '_wp_robots_nofollow', '_wp_robots', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_yoast_wpseo_meta-robots-adv', 'rank_math_robots', '_seopress_robots_index', '_seopress_robots_follow', '_aioseo_noindex', '_aioseo_nofollow');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', 'mop_ai_indexer_exclude', '_wp_robots_noindex', '_wp_robots_nofollow', '_wp_robots', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_yoast_wpseo_meta-robots-adv', 'rank_math_robots', '_seopress_robots_index', '_seopress_robots_follow', '_aioseo_noindex', '_aioseo_nofollow');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', 'mop_ai_indexer_exclude', '_wp_robots_noindex', '_wp_robots_nofollow', '_wp_robots', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_yoast_wpseo_meta-robots-adv', 'rank_math_robots', '_seopress_robots_index', '_seopress_robots_follow', '_aioseo_noindex', '_aioseo_nofollow');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', 'mop_ai_indexer_exclude', '_wp_robots_noindex', '_wp_robots_nofollow', '_wp_robots', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_yoast_wpseo_meta-robots-adv', 'rank_math_robots', '_seopress_robots_index', '_seopress_robots_follow', '_aioseo_noindex', '_aioseo_nofollow');

