-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('akbansa_ai_seo_include_types', 'akbansa_ai_seo_exclude_categories', 'akbansa_ai_seo_file_generator_frequency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_rank_math_description', '_aioseo_description', '_aioseop_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_rank_math_description', '_aioseo_description', '_aioseop_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_rank_math_description', '_aioseo_description', '_aioseop_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_rank_math_description', '_aioseo_description', '_aioseop_description');

