-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cos_headlinestudio_embed_token', 'cos_headlinestudio_user_id', 'cos_headlinestudio_user_email', 'cos_headlinestudio_account_connected_at', 'cos_headlinestudio_prefer_classic_experience', 'cos_headlinestudio_is_onboarded');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cos_headline_text', 'cos_seo_score', 'cos_headline_score', 'cos_last_analyzed_headline');
DELETE FROM wp_usermeta WHERE meta_key IN ('cos_headline_text', 'cos_seo_score', 'cos_headline_score', 'cos_last_analyzed_headline');
DELETE FROM wp_termmeta WHERE meta_key IN ('cos_headline_text', 'cos_seo_score', 'cos_headline_score', 'cos_last_analyzed_headline');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cos_headline_text', 'cos_seo_score', 'cos_headline_score', 'cos_last_analyzed_headline');

