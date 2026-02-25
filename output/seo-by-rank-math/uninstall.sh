#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_maintenance_mode_mode'
wp option delete 'elementor_maintenance_mode_template_id'
wp option delete 'elementor_maintenance_mode_exclude_mode'
wp option delete 'elementor_maintenance_mode_exclude_roles'
wp option delete 'icl_sitepress_settings'
wp option delete 'rank_math_registration_skip'
wp option delete 'rank_math_siteurl_mismatch_notice_dismissed'
wp option delete 'rank_math_already_reviewed'
wp option delete 'rank_math_already_upgraded'
wp option delete 'rank_math_view_modules'
wp option delete 'rank_math_flush_rewrite'
wp option delete 'rank_math_install_date'
wp option delete 'rank_math_review_notice_added'
wp option delete 'rank_math_review_notice_date'
wp option delete 'rank_math_review_notice_delayed'
wp option delete 'rank_math_known_post_types'
wp option delete 'rank_math_wpml_notice_dismissed'
wp option delete 'rank_math_wpml_data_converted'
wp option delete 'rank-math-options-instant-indexing'
wp option delete 'rank_math_review_posts_converted'
wp option delete 'rank_math_pro_notice_added'
wp option delete 'rank_math_pro_notice_delayed'
wp option delete 'rank_math_pro_notice_date'
wp option delete 'rank_math_wizard_completed'
wp option delete 'rank_math_is_configured'
wp option delete 'aioseo_options'
wp option delete 'aioseo_options_pro'
wp option delete 'seopress_titles_option_name'
wp option delete 'seopress_xml_sitemap_option_name'
wp option delete 'seopress_pro_option_name'
wp option delete 'seopress_toggle'
wp option delete 'seopress_social_option_name'
wp option delete 'seopress_advanced_option_name'
wp option delete 'wp-schema-pro-general-settings'
wp option delete 'wp-schema-pro-social-profiles'
wp option delete 'wp-schema-pro-global-schemas'
wp option delete 'wpseo'
wp option delete 'wpseo_social'
wp option delete 'wpseo_titles'
wp option delete 'wpseo_internallinks'
wp option delete 'wpseo_xml'
wp option delete 'wpseo_taxonomy_meta'
wp option delete 'wpseo-premium-redirects-base'
wp option delete 'wpseo_news'
wp option delete 'wpseo_video'
wp option delete 'wpseo_local'
wp option delete 'active_sitewide_plugins'
wp option delete 'rank_math_yoast_block_posts'
wp option delete 'rank_math_analytics_all_services'
wp option delete 'rank_math_google_analytic_options'
wp option delete 'rank_math_google_analytic_profile'
wp option delete 'subscribe_reloaded_manager_page'
wp option delete 'rank_math_modules'
wp option delete 'vhp_varnish_ip'
wp option delete 'rank_math_version'
wp option delete 'rank_math_db_version'
wp option delete 'rank_math_rollback_version'
wp option delete 'rank_math_monitor_version'
wp option delete 'rank-math-options-general'
wp option delete 'rank-math-options-titles'
wp option delete 'rank-math-options-sitemap'
wp option delete 'rewrite_rules'
wp option delete 'rank_math_update_notifications_sent'
wp option delete 'auto_update_plugins'
wp option delete 'rank_math_analytics_installed'
wp option delete 'rank_math_analytics_last_single_action_schedule_time'
wp option delete 'rank_math_analytics_first_fetch'
wp option delete 'rank_math_analytics_cron_notice_dismissed'
wp option delete 'rank_math_analytics_last_updated'
wp option delete 'rank_math_viewed_index_status'
wp option delete 'rankmath_google_api_failed_attempts_data'
wp option delete 'rankmath_google_api_reconnect'
wp option delete 'rank_math_console_empty_dates'
wp option delete 'rank_math_ca_credits'
wp option delete 'rank_math_content_ai_viewed'
wp option delete 'rank_math_ca_data'
wp option delete 'rank_math_content_ai_posts'
wp option delete 'rank_math_content_ai_posts_processed'
wp option delete 'rank_math_prompts_updated'
wp option delete 'rank_math_aioseo_block_posts'
wp option delete 'rank_math_seo_analysis_results'
wp option delete 'rank_math_seo_analysis_date'
wp option delete 'rank_math_indexnow_log'
wp option delete 'rank_math_local_seo_update'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_results'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_url'"
wp option delete 'rank_math_remove_nginx_notice'
wp option delete 'rank_math_backups'
wp option delete 'rank_math_mixpanel_optin'
wp option delete 'rank_math_react_settings_ui'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_mixpanel_optin'"

# Delete Transients
wp transient delete 'rank_math_first_submenu_id'
wp transient delete 'rank_math_active_offer'
wp transient delete '_rank_math_activation_redirect'
wp transient delete '_rank_math_site_type'
wp transient delete 'rank_math_any_review_posts'
wp transient delete 'rank_math_wp_cron_usable'
wp transient delete 'rank_math_analytics_data_info'
wp transient delete 'rank_math_google_site_verification'
wp transient delete 'rank_math_content_ai_migrating_user'
wp transient delete 'update_plugins'
wp transient delete 'rank_math_trunk_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'rank_math/analytics/get_analytics'
wp cron event delete 'wp_bulk_edit_seo_meta_cron'
wp cron event delete 'wp_bulk_image_alt_cron'
wp cron event delete 'rank_math/content-ai/update_plan'
wp cron event delete 'rank_math/links/internal_links'
wp cron event delete 'rank_math/sitemap/hit_index'
wp cron event delete 'rank_math/content-ai/update_prompts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_pillar_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_pillar_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_pillar_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_pillar_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'additional_profile_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'additional_profile_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'additional_profile_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'additional_profile_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_metabox_checklist_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_metabox_checklist_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_metabox_checklist_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_metabox_checklist_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_bsf_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_bsf_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_bsf_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_bsf_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rank_math_schema_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rank_math_schema_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rank_math_schema_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rank_math_schema_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aioseo_facebook_page_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aioseo_facebook_page_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aioseo_facebook_page_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aioseo_facebook_page_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aioseo_twitter_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aioseo_twitter_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aioseo_twitter_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aioseo_twitter_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aioseo_profiles_additional_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aioseo_profiles_additional_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aioseo_profiles_additional_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aioseo_profiles_additional_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_social_fb_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_social_fb_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_social_fb_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_social_fb_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_social_twitter_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_social_twitter_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_social_twitter_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_social_twitter_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_redirections_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_redirections_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_redirections_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_redirections_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_redirections_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_redirections_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_redirections_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_redirections_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_pro_rich_snippets_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_pro_rich_snippets_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_pro_rich_snippets_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_pro_rich_snippets_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_rich_snippet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'bsf-schema-pro-rating-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'bsf-schema-pro-rating-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'bsf-schema-pro-rating-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bsf-schema-pro-rating-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bsf-aiosrs-schema-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bsf-aiosrs-schema-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bsf-aiosrs-schema-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bsf-aiosrs-schema-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'bsf-aiosrs-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'bsf-aiosrs-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'bsf-aiosrs-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bsf-aiosrs-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_is_cornerstone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_is_cornerstone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_is_cornerstone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_is_cornerstone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_newssitemap-robots-index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_newssitemap-robots-index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_newssitemap-robots-index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_newssitemap-robots-index'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_news_sitemap_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_news_sitemap_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_news_sitemap_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_news_sitemap_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_local_business_latitide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_local_business_latitide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_local_business_latitide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_local_business_latitide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_local_business_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_local_business_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_local_business_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_local_business_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-adv'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpseo_noindex_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpseo_noindex_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpseo_noindex_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpseo_noindex_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_video_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_video_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_video_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_video_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_videositemap-duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_videositemap-duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_videositemap-duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_videositemap-duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_videositemap-thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_videositemap-thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_videositemap-thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_videositemap-thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_videositemap-not-family-friendly'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_videositemap-not-family-friendly'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_videositemap-not-family-friendly'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_videositemap-not-family-friendly'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_schema_VideoObject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_schema_VideoObject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_schema_VideoObject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_schema_VideoObject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rank_math_primary_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rank_math_primary_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rank_math_primary_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rank_math_primary_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_dont_show_seo_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_dont_show_seo_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_dont_show_seo_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_dont_show_seo_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_seo_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_seo_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_seo_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_seo_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_exclude_sitemap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_exclude_sitemap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_exclude_sitemap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_exclude_sitemap'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_hide_frontend_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_hide_frontend_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_hide_frontend_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_hide_frontend_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_analytics_table_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_analytics_table_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_analytics_table_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_analytics_table_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_analytic_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_analytic_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_analytic_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_analytic_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_ca_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_ca_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_ca_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_ca_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_internal_links_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_internal_links_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_internal_links_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_internal_links_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rank_math_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rank_math_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rank_math_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rank_math_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rank_math_shortcode_schema_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rank_math_shortcode_schema_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rank_math_shortcode_schema_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rank_math_shortcode_schema_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
