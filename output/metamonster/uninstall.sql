-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('metamonster_home_title', 'metamonster_home_description', 'rank-math-options-titles', 'autodescription-site-settings', 'metamonster_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_title', 'rank_math_title', '_genesis_title', '_metamonster_page_title', '_yoast_wpseo_metadesc', 'rank_math_description', '_genesis_description', '_metamonster_meta_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_title', 'rank_math_title', '_genesis_title', '_metamonster_page_title', '_yoast_wpseo_metadesc', 'rank_math_description', '_genesis_description', '_metamonster_meta_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_title', 'rank_math_title', '_genesis_title', '_metamonster_page_title', '_yoast_wpseo_metadesc', 'rank_math_description', '_genesis_description', '_metamonster_meta_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_title', 'rank_math_title', '_genesis_title', '_metamonster_page_title', '_yoast_wpseo_metadesc', 'rank_math_description', '_genesis_description', '_metamonster_meta_description');

