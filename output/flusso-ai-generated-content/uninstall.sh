#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_key'"
wp option delete 'emn_fl_organization_id'
wp option delete 'emn_fl_openai_platform_settings_gpt_4'
wp option delete 'emn_fl_content_features_key_points_border_color'
wp option delete 'emn_fl_content_features_key_points_hide_border'
wp option delete 'emn_fl_content_features_key_points_hide_label'
wp option delete 'emn_fl_content_features_key_points_label'
wp option delete 'emn_fl_content_features_key_points_position'
wp option delete 'emn_fl_content_features_product_description_language'
wp option delete 'emn_fl_content_features_key_points_show'
wp option delete 'emn_fl_content_features_key_points_when_saving'
wp option delete 'emn_fl_openai_key'
wp option delete 'emn_fl_content_features_block_translation_language'
wp option delete 'emn_fl_content_features_post_creator_language'
wp option delete 'emn_fl_content_features_comments_sentiment_activate'
wp option delete 'emn_fl_content_features_key_points_n'
wp option delete 'emn_fl_content_features_key_points_language'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emn_fl_ai_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emn_fl_ai_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emn_fl_ai_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emn_fl_ai_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_emn_fl_key_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_emn_fl_key_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_emn_fl_key_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_emn_fl_key_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emn_fl_sentiment_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emn_fl_sentiment_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emn_fl_sentiment_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emn_fl_sentiment_score'"
