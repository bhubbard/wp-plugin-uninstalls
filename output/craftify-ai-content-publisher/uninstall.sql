-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('craftify_ai_options', 'craftify_ai_connection_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_aioseo_title', '_aioseo_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_aioseo_title', '_aioseo_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_aioseo_title', '_aioseo_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_aioseo_title', '_aioseo_description');

