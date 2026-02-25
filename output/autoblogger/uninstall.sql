-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autoblogger_token_status', 'autoblogger_last_token_check', 'autoblogger_last_sync', 'autoblogger_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_aioseop_description', 'rank_math_description', '_seopress_analysis_description', '_genesis_title_description', '_metaseo_meta_desc', 'meta_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_aioseop_description', 'rank_math_description', '_seopress_analysis_description', '_genesis_title_description', '_metaseo_meta_desc', 'meta_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_aioseop_description', 'rank_math_description', '_seopress_analysis_description', '_genesis_title_description', '_metaseo_meta_desc', 'meta_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_aioseop_description', 'rank_math_description', '_seopress_analysis_description', '_genesis_title_description', '_metaseo_meta_desc', 'meta_description');

