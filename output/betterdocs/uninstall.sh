#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'betterdocs_helpscout_total_pages'
wp option delete 'betterdocs_helpscout_current_page'
wp option delete 'betterdocs_helpscout_migrated_article_ids'
wp option delete '_wpdeveloper_plugin_pointer_priority'
wp option delete 'wpins_allow_tracking'
wp option delete 'betterdocs_settings'
wp option delete 'dashboard_mode'
wp option delete 'disabled_embed_model_option'
wp option delete 'saved_docs_post_ids'
wp option delete 'betterdocs_ai_chatbot_error_posts'
wp option delete 'store_glossary_count'
wp option delete 'betterdocs_version'
wp option delete 'betterdocs_db_version'
wp option delete 'betterdocs_migration'
wp option delete 'rewrite_rules'
wp option delete 'enable_ai_chatbot'
wp option delete 'betterdocs_chatbot_software__license_status'
wp option delete 'betterdocs_pro_software__license_status'
wp option delete '_betterdocs_reusable_block_ids'
wp option delete 'betterdocs_ai_search_suggestions_software__license_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpins_deactivation_details_%'"
wp option delete 'wpins_last_track_time'
wp option delete 'active_sitewide_plugins'
wp option delete 'wpins_block_notice'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'betterdocs_helpscout_categories'
wp transient delete 'betterdocs_toc_setting'
wp transient delete 'wpnotice_priority_time_expired'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doc_category_knowledge_base'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doc_category_knowledge_base'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doc_category_knowledge_base'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doc_category_knowledge_base'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_docs_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_docs_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_docs_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_docs_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doc_category_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doc_category_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doc_category_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doc_category_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kb_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kb_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kb_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kb_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'glossary_term_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'glossary_term_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'glossary_term_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'glossary_term_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_visited_docs_admin_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_visited_docs_admin_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_visited_docs_admin_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_visited_docs_admin_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_betterdocs_article_quality_analysis'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_betterdocs_article_quality_analysis'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_betterdocs_article_quality_analysis'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_betterdocs_article_quality_analysis'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_betterdocs_article_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_betterdocs_article_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_betterdocs_article_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_betterdocs_article_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_betterdocs_article_summary_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_betterdocs_article_summary_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_betterdocs_article_summary_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_betterdocs_article_summary_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faq_group_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faq_group_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faq_group_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faq_group_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_betterdocs_faq_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_betterdocs_faq_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_betterdocs_faq_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_betterdocs_faq_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doc_category_image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doc_category_image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doc_category_image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doc_category_image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_betterdocs_est_reading_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_betterdocs_est_reading_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_betterdocs_est_reading_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_betterdocs_est_reading_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_betterdocs_reusable_block_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_betterdocs_reusable_block_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_betterdocs_reusable_block_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_betterdocs_reusable_block_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'doc_category_thumb-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'doc_category_thumb-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'doc_category_thumb-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'doc_category_thumb-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'faq_open_by_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'faq_open_by_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'faq_open_by_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'faq_open_by_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_betterdocs_article_quality_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_betterdocs_article_quality_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_betterdocs_article_quality_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_betterdocs_article_quality_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_betterdocs_article_quality_analyzed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_betterdocs_article_quality_analyzed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_betterdocs_article_quality_analyzed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_betterdocs_article_quality_analyzed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
