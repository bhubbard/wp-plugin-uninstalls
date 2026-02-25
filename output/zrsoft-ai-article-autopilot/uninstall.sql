-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiac_api_key', 'aiac_text_endpoint', 'aiac_image_endpoint', 'aiac_max_tokens', 'aiac_provider', 'aiac_text_models', 'aiac_image_models', 'aiac_image_sizes', 'aiac_style_presets');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aiac_description', '_yoast_wpseo_metadesc', '_aioseo_description', '_rank_math_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aiac_description', '_yoast_wpseo_metadesc', '_aioseo_description', '_rank_math_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aiac_description', '_yoast_wpseo_metadesc', '_aioseo_description', '_rank_math_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aiac_description', '_yoast_wpseo_metadesc', '_aioseo_description', '_rank_math_description');

