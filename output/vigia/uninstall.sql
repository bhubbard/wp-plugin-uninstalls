-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vigia_aiss_tip_dismissed', 'vigia_db_version', 'vigia_flush_rewrite', 'vigia_activation_notice', 'vigia_blocked_crawlers', 'vigia_robots_rules', 'vigia_email_settings', 'vigia_llms_settings', 'vigia_settings', 'vigia_custom_crawlers', 'vigia_blocked_items', 'vigia_markdown_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_noindex', '_seopress_robots_index', '_genesis_noindex');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_noindex', '_seopress_robots_index', '_genesis_noindex');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_noindex', '_seopress_robots_index', '_genesis_noindex');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', '_aioseo_noindex', '_seopress_robots_index', '_genesis_noindex');

