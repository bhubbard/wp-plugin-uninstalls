-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'rank-math-options-titles', 'wpseo_titles', 'rc_sm_plugin_version', 'wp_rocket_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rank_math_title', 'rank_math_description', 'rank_math_robots', 'wpseo_title', 'wpseo_desc', 'wpseo_noindex', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_meta-robots-noindex');
DELETE FROM wp_usermeta WHERE meta_key IN ('rank_math_title', 'rank_math_description', 'rank_math_robots', 'wpseo_title', 'wpseo_desc', 'wpseo_noindex', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_meta-robots-noindex');
DELETE FROM wp_termmeta WHERE meta_key IN ('rank_math_title', 'rank_math_description', 'rank_math_robots', 'wpseo_title', 'wpseo_desc', 'wpseo_noindex', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_meta-robots-noindex');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rank_math_title', 'rank_math_description', 'rank_math_robots', 'wpseo_title', 'wpseo_desc', 'wpseo_noindex', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_meta-robots-noindex');

