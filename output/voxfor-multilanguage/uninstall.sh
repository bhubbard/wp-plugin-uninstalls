#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'voxfor_ml_default_language'
wp option delete 'voxfor_ml_languages'
wp option delete 'voxfor_ml_auto_redirect'
wp option delete 'voxfor_ml_first_visit_only'
wp option delete 'voxfor_ml_batch_size'
wp option delete 'voxfor_ml_rate_limit'
wp option delete 'voxfor_ml_enable_hreflang'
wp option delete 'voxfor_ml_translate_slugs'
wp option delete 'voxfor_ml_translate_image_alt'
wp option delete 'voxfor_ml_widget_style'
wp option delete 'voxfor_ml_show_flags'
wp option delete 'voxfor_ml_show_native_names'
wp option delete 'voxfor_ml_floating_switcher'
wp option delete 'voxfor_ml_floating_position'
wp option delete 'voxfor_ml_cache_ttl'
wp option delete 'voxfor_ml_enable_visual_editor'
wp option delete 'voxfor_ml_woocommerce_compat'
wp option delete 'voxfor_ml_cache_vary_cookie'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'voxfor_ml_%'"
wp option delete 'voxfor_ml_enable_object_cache'
wp option delete 'voxfor_ml_deepl_api_key'
wp option delete 'voxfor_ml_api_key_changed'
wp option delete 'voxfor_ml_api_key_original'
wp option delete 'voxfor_ml_display_label'
wp option delete 'voxfor_ml_display_flag'
wp option delete 'voxfor_ml_display_prefix'
wp option delete 'voxfor_ml_immediate_translation'
wp option delete 'voxfor_ml_noindex_preparing'
wp option delete 'voxfor_ml_include_post_tags_sitemap'
wp option delete 'voxfor_ml_include_product_tags_sitemap'
wp option delete 'voxfor_ml_show_names'
wp option delete 'voxfor_ml_enable_lazy_loading'
wp option delete 'voxfor_ml_wc_translate_products'
wp option delete 'voxfor_ml_wc_translate_categories'
wp option delete 'voxfor_ml_wc_translate_attributes'
wp option delete 'voxfor_ml_wc_translate_ui'
wp option delete 'voxfor_ml_wc_translate_shop_pages'
wp option delete 'voxfor_ml_wc_preserve_currency'
wp option delete 'voxfor_ml_wc_preserve_cart'
wp option delete 'voxfor_ml_api_enabled'
wp option delete 'voxfor_ml_daily_credit_limit'
wp option delete 'voxfor_ml_monthly_credit_limit'
wp option delete 'voxfor_ml_alert_daily_80'
wp option delete 'voxfor_ml_alert_monthly_80'
wp option delete 'voxfor_ml_daily_cost_alert'
wp option delete 'voxfor_ml_monthly_cost_alert'
wp option delete 'voxfor_ml_cost_alert_email'
wp option delete 'voxfor_ml_api_emergency_stop'
wp option delete 'voxfor_ml_track_usage'
wp option delete 'voxfor_ml_usage_retention_days'
wp option delete 'voxfor_ml_alert_daily_90'
wp option delete 'voxfor_ml_alert_monthly_90'
wp option delete 'voxfor_ml_glossary_loaded'
wp option delete 'voxfor_ml_monthly_tokens'
wp option delete 'voxfor_ml_auto_add_to_navigation'
wp option delete 'voxfor_ml_auto_add_to_astra'
wp option delete 'voxfor_ml_auto_add_to_astra_mobile'
wp option delete 'voxfor_ml_auto_add_to_generatepress'
wp option delete 'voxfor_ml_auto_add_to_oceanwp'
wp option delete 'voxfor_ml_auto_add_to_kadence'
wp option delete 'voxfor_ml_auto_add_to_neve'
wp option delete 'voxfor_ml_auto_add_to_divi'
wp option delete 'voxfor_ml_current_theme'
wp option delete 'voxfor_ml_theme_switched'
wp option delete 'voxfor_ml_db_version'
wp option delete 'voxfor_ml_migration_version'
wp option delete 'voxfor_ml_comprehensive_translation_enabled'
wp option delete 'voxfor_ml_wc_translate_descriptions'
wp option delete 'voxfor_ml_auto_translate_on_visit'
wp option delete 'voxfor_ml_public_trigger_translation'
wp option delete 'voxfor_ml_cached_languages'
wp option delete 'voxfor_ml_rewrite_rules_version'
wp option delete 'voxfor_ml_add_lang_to_images'
wp option delete 'voxfor_ml_auto_translate_images'
wp option delete 'voxfor_ml_auto_retranslate'
wp option delete 'voxfor_ml_nginx_cache_enabled'
wp option delete 'voxfor_ml_deepl_api_key_encrypted'
wp option delete 'voxfor_ml_encryption_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_voxfor_ml_progress_%' OR option_name LIKE '_site_transient_voxfor_ml_progress_%'"
wp transient delete 'voxfor_ml_translations'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_voxfor_ml_translation_%' OR option_name LIKE '_site_transient_voxfor_ml_translation_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_voxfor_ml_pending_progress_%' OR option_name LIKE '_site_transient_voxfor_ml_pending_progress_%'"
wp transient delete 'voxfor_ml_cancel_translation'
wp transient delete 'voxfor_ml_cancel_individual_translation'
wp transient delete 'voxfor_ml_language_urls'
wp transient delete 'voxfor_ml_theme_urls'
wp transient delete 'voxfor_ml_individual_translation_active'
wp transient delete 'voxfor_ml_cache_cleaned'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_voxfor_ml_translations_%' OR option_name LIKE '_site_transient_voxfor_ml_translations_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_voxfor_ml_job_progress_%' OR option_name LIKE '_site_transient_voxfor_ml_job_progress_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_voxfor_ml_cancel_%' OR option_name LIKE '_site_transient_voxfor_ml_cancel_%'"

# Clear Cron Jobs
wp cron event delete 'voxfor_ml_daily_stats_cleanup'
wp cron event delete 'voxfor_ml_process_translation_queue'
wp cron event delete 'voxfor_ml_cleanup_old_translations'
wp cron event delete 'voxfor_ml_process_queue'
wp cron event delete 'voxfor_ml_process_single_page'
wp cron event delete 'voxfor_ml_translate_image'
wp cron event delete 'voxfor_ml_process_retranslation'
wp cron event delete 'voxfor_ml_process_bulk_translation'
wp cron event delete 'voxfor_ml_cleanup_usage'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voxfor_ml_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voxfor_ml_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voxfor_ml_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voxfor_ml_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wp_meta_title_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wp_meta_title_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wp_meta_title_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wp_meta_title_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wp_meta_description_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wp_meta_description_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wp_meta_description_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wp_meta_description_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_tabs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_tabs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_tabs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_tabs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'frs_woo_product_tabs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'frs_woo_product_tabs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'frs_woo_product_tabs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'frs_woo_product_tabs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywtm_tab_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywtm_tab_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywtm_tab_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywtm_tab_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ywtm_tab_title_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ywtm_tab_title_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ywtm_tab_title_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ywtm_tab_title_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ywtm_tab_content_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ywtm_tab_content_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ywtm_tab_content_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ywtm_tab_content_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_addons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voxfor_ml_element_languages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voxfor_ml_element_languages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voxfor_ml_element_languages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voxfor_ml_element_languages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_voxfor_ml_alt_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_voxfor_ml_alt_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_voxfor_ml_alt_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_voxfor_ml_alt_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_voxfor_ml_title_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_voxfor_ml_title_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_voxfor_ml_title_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_voxfor_ml_title_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_opengraph-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_facebook_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_facebook_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_facebook_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_facebook_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_facebook_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_facebook_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_facebook_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_facebook_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_twitter_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_twitter_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_twitter_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_twitter_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_twitter_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_twitter_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_twitter_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_twitter_description'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_twitter_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_twitter_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_twitter_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_twitter_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_twitter_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_twitter_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_twitter_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_twitter_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_social_fb_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_social_fb_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_social_fb_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_social_fb_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_social_fb_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_social_fb_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_social_fb_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_social_fb_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_social_twitter_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_social_twitter_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_social_twitter_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_social_twitter_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_social_twitter_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_social_twitter_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_social_twitter_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_social_twitter_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voxfor_ml_source_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voxfor_ml_source_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voxfor_ml_source_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voxfor_ml_source_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voxfor_ml_source_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voxfor_ml_source_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voxfor_ml_source_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voxfor_ml_source_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voxfor_ml_source_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voxfor_ml_source_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voxfor_ml_source_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voxfor_ml_source_excerpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voxfor_ml_last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voxfor_ml_last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voxfor_ml_last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voxfor_ml_last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_voxfor_ml_source_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_voxfor_ml_source_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_voxfor_ml_source_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_voxfor_ml_source_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voxfor_ml_translated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voxfor_ml_translated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voxfor_ml_translated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voxfor_ml_translated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_voxfor_ml_translated_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_voxfor_ml_translated_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_voxfor_ml_translated_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_voxfor_ml_translated_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
