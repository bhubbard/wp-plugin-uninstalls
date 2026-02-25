-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('urlslab-relres-def-img', 'urlslab', 'urlslab_serp_queries_count', 'urlslab_optimize_web_vitals_table');
DELETE FROM wp_options WHERE option_name LIKE 'url_cache_%';
DELETE FROM wp_options WHERE option_name LIKE 'urlslab-rate-limit-%';
DELETE FROM wp_options WHERE option_name LIKE 'urlslab-404-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_aioseop_description', 'rank_math_description', '_description', 'description', 'excerpt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_aioseop_description', 'rank_math_description', '_description', 'description', 'excerpt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_aioseop_description', 'rank_math_description', '_description', 'description', 'excerpt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_aioseop_description', 'rank_math_description', '_description', 'description', 'excerpt');

