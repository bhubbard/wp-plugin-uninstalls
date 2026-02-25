-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vts_ai_content_logs', 'vts_ai_content_prompts', 'vts_ai_content_user_email', 'vts_ai_content_registration_step', 'vts_ai_content_api_key', 'vts_ai_google_access_token', 'vts_ai_google_refresh_token', 'vts_ai_google_token_expires_at', 'vts_ai_google_token_type', 'vts_ai_google_scope', 'vts_ai_google_id_token', 'vts_ai_content_model');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw');
DELETE FROM wp_usermeta WHERE meta_key IN ('rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw');
DELETE FROM wp_termmeta WHERE meta_key IN ('rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw');

