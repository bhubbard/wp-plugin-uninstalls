-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maao_service_account_json', 'maao_project_id', 'maao_youtube_api_key', 'maao_cse_api_key', 'maao_cse_id', 'maa_license_status', 'maa_license_key', 'maa_user_email', 'maa_service_account_json', 'maa_project_id', 'maa_youtube_api_key', 'maa_cse_api_key', 'maa_cse_id', 'maao_vertex_ai_token', 'maa_vertex_ai_token');
DELETE FROM wp_options WHERE option_name LIKE 'maao_publish_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_maao_scoped_post_css', '_yoast_wpseo_metadesc', 'rank_math_description', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword');
DELETE FROM wp_usermeta WHERE meta_key IN ('_maao_scoped_post_css', '_yoast_wpseo_metadesc', 'rank_math_description', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword');
DELETE FROM wp_termmeta WHERE meta_key IN ('_maao_scoped_post_css', '_yoast_wpseo_metadesc', 'rank_math_description', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_maao_scoped_post_css', '_yoast_wpseo_metadesc', 'rank_math_description', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword');

