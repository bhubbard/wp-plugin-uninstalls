-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mass_meta_creator_homepage_context', 'mass_meta_creator_provider', 'mass_meta_creator_api_key', 'mass_meta_creator_gemini_model', 'mass_meta_creator_api_check', 'mass_meta_creator_model_check');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword');

