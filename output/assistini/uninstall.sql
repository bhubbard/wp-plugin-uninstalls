-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ASSI_PLUGIN_BLOG_ACCESS_TOKEN', 'ASSI_PLUGIN_ACCOUNT', 'ASSI_PLUGIN_GLOBAL_ALERTS', 'ASSI_PLUGIN_CONNECTION_TO_SERVER', 'ASSI_PLUGIN_CUSTOM_AI_CONNECTION', 'ASSI_PLUGIN_VERSION');
DELETE FROM wp_options WHERE option_name LIKE 'ASSI_PLUGIN_BLOG_USER_OPTION_%';
DELETE FROM wp_options WHERE option_name LIKE 'ASSI_PLUGIN_CUSTOM_STYLES_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_aioseop_description', 'rank_math_description', '_yoast_wpseo_focuskw', '_aioseop_keywords', 'rank_math_focus_keyword');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_aioseop_description', 'rank_math_description', '_yoast_wpseo_focuskw', '_aioseop_keywords', 'rank_math_focus_keyword');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_aioseop_description', 'rank_math_description', '_yoast_wpseo_focuskw', '_aioseop_keywords', 'rank_math_focus_keyword');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', '_aioseop_description', 'rank_math_description', '_yoast_wpseo_focuskw', '_aioseop_keywords', 'rank_math_focus_keyword');

