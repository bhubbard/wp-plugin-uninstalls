-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seo_meta_editor_pro_options', 'seo_meta_editor_settings', 'seo_meta_editor_version', 'wpseo_titles', 'seo_meta_editor_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rank_math_robots', 'rank_math_canonical_url', 'rank_math_focus_keyword', 'rank_math_primary_category', 'rank_math_primary_product_cat', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_yoast_wpseo_meta-robots-adv', '_yoast_wpseo_primary_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('rank_math_robots', 'rank_math_canonical_url', 'rank_math_focus_keyword', 'rank_math_primary_category', 'rank_math_primary_product_cat', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_yoast_wpseo_meta-robots-adv', '_yoast_wpseo_primary_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('rank_math_robots', 'rank_math_canonical_url', 'rank_math_focus_keyword', 'rank_math_primary_category', 'rank_math_primary_product_cat', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_yoast_wpseo_meta-robots-adv', '_yoast_wpseo_primary_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rank_math_robots', 'rank_math_canonical_url', 'rank_math_focus_keyword', 'rank_math_primary_category', 'rank_math_primary_product_cat', '_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_meta-robots-nofollow', '_yoast_wpseo_meta-robots-adv', '_yoast_wpseo_primary_category');

