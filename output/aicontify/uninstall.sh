#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aicont_active_license'
wp option delete 'aicont_plugin_license_data'
wp option delete 'aicont_plugin_content_prompt_custom'
wp option delete 'aicont_plugin_faq_prompt_custom'
wp option delete 'aicont_plugin_template_type'
wp option delete 'aicont_plugin_faq_article_id'
wp option delete 'aicont_plugin_faq_question_id'
wp option delete 'aicont_plugin_faq_answer_id'
wp option delete 'aicont_plugin_seo_meta_prompt_custom'
wp option delete 'aicont_plugin_seo_title_prompt_custom'
wp option delete 'aicont_plugin_content_page_prompt_custom'
wp option delete 'aicont_plugin_content_product_prompt_custom'
wp option delete 'aicont_plugin_short_description_prompt_custom'
wp option delete 'aicont_plugin_faq_page_prompt_custom'
wp option delete 'aicont_plugin_faq_page_article_id'
wp option delete 'aicont_plugin_faq_page_question_id'
wp option delete 'aicont_plugin_faq_page_answer_id'
wp option delete 'aicont_plugin_faq_product_prompt_custom'
wp option delete 'aicont_plugin_faq_product_article_id'
wp option delete 'aicont_plugin_faq_product_question_id'
wp option delete 'aicont_plugin_faq_product_answer_id'
wp option delete 'aicont_plugin_site_language'
wp option delete 'aicont_plugin_site_title'
wp option delete 'aicont_plugin_seo_meta_page_prompt_custom'
wp option delete 'aicont_plugin_seo_meta_product_prompt_custom'
wp option delete 'aicont_plugin_seo_page_title_prompt_custom'
wp option delete 'aicont_plugin_seo_title_product_prompt_custom'
wp option delete 'aicont_plugin_seo_product_title_prompt_custom'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aicont_singlepost_content_prompt_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aicont_singlepost_content_prompt_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aicont_singlepost_content_prompt_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aicont_singlepost_content_prompt_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aicont_singlepost_editContent_prompt_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aicont_singlepost_editContent_prompt_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aicont_singlepost_editContent_prompt_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aicont_singlepost_editContent_prompt_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aicont_singlepost_faq_prompt_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aicont_singlepost_faq_prompt_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aicont_singlepost_faq_prompt_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aicont_singlepost_faq_prompt_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aicont_singlepost_seo_description_prompt_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aicont_singlepost_seo_description_prompt_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aicont_singlepost_seo_description_prompt_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aicont_singlepost_seo_description_prompt_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aicont_singlepost_seo_title_prompt_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aicont_singlepost_seo_title_prompt_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aicont_singlepost_seo_title_prompt_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aicont_singlepost_seo_title_prompt_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aicont_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aicont_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aicont_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aicont_keyword'"
