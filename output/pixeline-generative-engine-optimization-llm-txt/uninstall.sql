-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pixeline_geo_llm');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', 'robots');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', 'robots');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', 'robots');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', 'rank_math_robots', 'robots');

