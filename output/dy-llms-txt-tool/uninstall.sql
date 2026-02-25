-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dyllto_version', 'dyllto_options', 'dyllto_ai_options', 'dyllto_settings_applied', 'dy_llms_app_context', 'dy_llms_context_hash', 'dyllto_ai_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rank_math_description', '_yoast_wpseo_metadesc', '_dyllto_exclude', 'rank_math_robots', '_yoast_wpseo_meta-robots-noindex');
DELETE FROM wp_usermeta WHERE meta_key IN ('rank_math_description', '_yoast_wpseo_metadesc', '_dyllto_exclude', 'rank_math_robots', '_yoast_wpseo_meta-robots-noindex');
DELETE FROM wp_termmeta WHERE meta_key IN ('rank_math_description', '_yoast_wpseo_metadesc', '_dyllto_exclude', 'rank_math_robots', '_yoast_wpseo_meta-robots-noindex');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rank_math_description', '_yoast_wpseo_metadesc', '_dyllto_exclude', 'rank_math_robots', '_yoast_wpseo_meta-robots-noindex');

