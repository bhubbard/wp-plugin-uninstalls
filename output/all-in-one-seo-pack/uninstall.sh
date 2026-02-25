#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_aioseo_deprecated_wordpress_dismissed_%'"
wp option delete 'aioseop_options'
wp option delete 'aioseo_options_v3'
wp option delete 'rank-math-options-general'
wp option delete 'rank-math-options-sitemap'
wp option delete 'rank-math-options-titles'
wp option delete 'seopress_google_analytics_option_name'
wp option delete 'seopress_pro_option_name'
wp option delete 'seopress_advanced_option_name'
wp option delete 'seopress_xml_sitemap_option_name'
wp option delete 'seopress_social_option_name'
wp option delete 'seopress_titles_option_name'
wp option delete 'wpseo'
wp option delete 'wpseo_titles'
wp option delete 'wpseo_social'
wp option delete '_aioseo_cache_pro_just_deactivated_lite'
wp option delete 'aioseo_options'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_localized'"
wp option delete 'aioseo_flush_rewrite_rules_flag'
wp option delete 'is_aioseo_settings_enabled'
wp option delete 'aioseo_activation_redirect'
wp option delete 'woocommerce_terms_page_id'
wp option delete 'bp-pages'
wp option delete 'cff_oembed_token'
wp option delete 'trp_settings'
wp option delete 'amp-options'
wp option delete 'classic-editor-replace'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete '_monsterinsights_activation_redirect'
wp transient delete 'optin_monster_api_activation_redirect'
wp transient delete 'update_core'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_conflicting_plugins_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_conflicting_plugins_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_conflicting_plugins_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_conflicting_plugins_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_plugin_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_plugin_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_plugin_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_plugin_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_ai_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_ai_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_ai_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_ai_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_ai_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_ai_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_ai_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_ai_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_ai_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_ai_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_ai_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_ai_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_notification_plugin_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_notification_plugin_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_notification_plugin_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_notification_plugin_review_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_opengraph_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_opengraph_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_opengraph_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_opengraph_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aioseo_facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aioseo_facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aioseo_facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aioseo_facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aioseo_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aioseo_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aioseo_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aioseo_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_og_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_og_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_og_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_og_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_og_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_og_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_og_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_og_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_og_article_section'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_og_article_section'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_og_article_section'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_og_article_section'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_og_article_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_og_article_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_og_article_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_og_article_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_twitter_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_twitter_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_twitter_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_twitter_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_twitter_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_twitter_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_twitter_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_twitter_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fusion_builder_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seedprod_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seedprod_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seedprod_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seedprod_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aioseo_profiles_same_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aioseo_profiles_same_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aioseo_profiles_same_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aioseo_profiles_same_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aioseo_profiles_additional_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aioseo_profiles_additional_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aioseo_profiles_additional_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aioseo_profiles_additional_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seoboost_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seoboost_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seoboost_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seoboost_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seoboost_user_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seoboost_user_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seoboost_user_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seoboost_user_options'"
