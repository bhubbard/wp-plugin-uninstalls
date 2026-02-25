-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('llms_local_log', 'llms_generator_settings', 'llms_crawler_options', 'llms_site_log_enabled_status', 'woocommerce_currency', 'rank_math_description');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('llms_ai_banner_dismissed', 'llms_notice_dismissed', '_llmstxt_page_md', '_md_url', '_sku', '_price', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_seopress_robots_index', '_seopress_robots_follow', 'rank_math_robots', 'rank_math_title', '_llmstxt_custom_note', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('llms_ai_banner_dismissed', 'llms_notice_dismissed', '_llmstxt_page_md', '_md_url', '_sku', '_price', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_seopress_robots_index', '_seopress_robots_follow', 'rank_math_robots', 'rank_math_title', '_llmstxt_custom_note', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('llms_ai_banner_dismissed', 'llms_notice_dismissed', '_llmstxt_page_md', '_md_url', '_sku', '_price', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_seopress_robots_index', '_seopress_robots_follow', 'rank_math_robots', 'rank_math_title', '_llmstxt_custom_note', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('llms_ai_banner_dismissed', 'llms_notice_dismissed', '_llmstxt_page_md', '_md_url', '_sku', '_price', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_seopress_robots_index', '_seopress_robots_follow', 'rank_math_robots', 'rank_math_title', '_llmstxt_custom_note', '_wp_page_template');

