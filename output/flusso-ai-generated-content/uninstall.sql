-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emn_fl_organization_id', 'emn_fl_openai_platform_settings_gpt_4', 'emn_fl_content_features_key_points_border_color', 'emn_fl_content_features_key_points_hide_border', 'emn_fl_content_features_key_points_hide_label', 'emn_fl_content_features_key_points_label', 'emn_fl_content_features_key_points_position', 'emn_fl_content_features_product_description_language', 'emn_fl_content_features_key_points_show', 'emn_fl_content_features_key_points_when_saving', 'emn_fl_openai_key', 'emn_fl_content_features_block_translation_language', 'emn_fl_content_features_post_creator_language', 'emn_fl_content_features_comments_sentiment_activate', 'emn_fl_content_features_key_points_n', 'emn_fl_content_features_key_points_language');
DELETE FROM wp_options WHERE option_name LIKE '%_key';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('emn_fl_ai_generated', '_emn_fl_key_points', 'emn_fl_sentiment_score');
DELETE FROM wp_usermeta WHERE meta_key IN ('emn_fl_ai_generated', '_emn_fl_key_points', 'emn_fl_sentiment_score');
DELETE FROM wp_termmeta WHERE meta_key IN ('emn_fl_ai_generated', '_emn_fl_key_points', 'emn_fl_sentiment_score');
DELETE FROM wp_commentmeta WHERE meta_key IN ('emn_fl_ai_generated', '_emn_fl_key_points', 'emn_fl_sentiment_score');

