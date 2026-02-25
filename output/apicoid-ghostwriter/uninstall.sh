#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apicoid_gw_article_presets'
wp option delete 'apicoid_gw_article_writing_style'
wp option delete 'apicoid_gw_article_tone'
wp option delete 'apicoid_gw_article_search_intent'
wp option delete 'apicoid_gw_article_point_of_view'
wp option delete 'apicoid_gw_article_creativity_level'
wp option delete 'apicoid_gw_article_language'
wp option delete 'apicoid_gw_article_audience'
wp option delete 'apicoid_gw_article_additional_prompt'
wp option delete 'apicoid_gw_article_allow_related_keyword'
wp option delete 'apicoid_gw_article_generate_image'
wp option delete 'apicoid_gw_article_related_articles'
wp option delete 'apicoid_gw_article_related_article_label'
wp option delete 'apicoid_gw_db_version'
wp option delete 'apicoid_gw_api_key_valid'
wp option delete 'apicoid_gw_api_key'
wp option delete 'apicoid_gw_article_pagination_size'
wp option delete 'apicoid_gw_auto_schedule_per_day'
wp option delete 'apicoid_gw_auto_schedule_start_hour'
wp option delete 'apicoid_gw_auto_schedule_end_hour'
wp option delete 'apicoid_gw_google_index_enabled'
wp option delete 'apicoid_gw_google_index_base_url'
wp option delete 'classic-editor-replace'
wp option delete 'apicoid_gw_google_index_service_account'

# Delete Transients
wp transient delete 'apicoid_gw_table_exists'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tsf_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tsf_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tsf_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tsf_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sq_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sq_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sq_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sq_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_psp_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_psp_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_psp_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_psp_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_titles_target_kw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_titles_target_kw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_titles_target_kw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_titles_target_kw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genesis_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genesis_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genesis_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genesis_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sq_keywordphrase'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sq_keywordphrase'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sq_keywordphrase'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sq_keywordphrase'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_psp_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_psp_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_psp_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_psp_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apicoid_gw_google_index_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apicoid_gw_google_index_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apicoid_gw_google_index_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apicoid_gw_google_index_status'"
