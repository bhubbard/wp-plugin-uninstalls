-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('longshot_ai_api_key', 'longshot_ai_unique_id', 'longshot_ai_auth_id', 'longshot_ai_extension_allowed', 'longshot_ai_persistent_message', 'longshot_ai_feedback_dismissed', 'longshot_ai_feedback_given', 'longshot_ai_feedback_message', 'longshot_ai_author_id', 'longshot_ai_login_message');
DELETE FROM wp_options WHERE option_name LIKE 'longshot_ai_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('longshot_ai_post_topic', 'longshot_ai_country', 'longshot_ai_language', 'longshot_ai_semantic_seo_score', 'longshot_ai_meta_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('longshot_ai_post_topic', 'longshot_ai_country', 'longshot_ai_language', 'longshot_ai_semantic_seo_score', 'longshot_ai_meta_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('longshot_ai_post_topic', 'longshot_ai_country', 'longshot_ai_language', 'longshot_ai_semantic_seo_score', 'longshot_ai_meta_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('longshot_ai_post_topic', 'longshot_ai_country', 'longshot_ai_language', 'longshot_ai_semantic_seo_score', 'longshot_ai_meta_description');

