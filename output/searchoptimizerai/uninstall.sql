-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_yoast_wpseo_title', 'rank_math_title', '_aioseo_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_yoast_wpseo_title', 'rank_math_title', '_aioseo_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_yoast_wpseo_title', 'rank_math_title', '_aioseo_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_yoast_wpseo_title', 'rank_math_title', '_aioseo_title');

