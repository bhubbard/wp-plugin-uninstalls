#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mxchat_options'
wp option delete 'additional_popular_questions'
wp option delete 'mxchat_transcripts_options'
wp option delete 'mxchat_current_knowledge_bot'
wp option delete 'mxchat_acf_excluded_fields'
wp option delete 'mxchat_custom_meta_whitelist'
wp option delete 'mxchat_prompts_options'
wp option delete 'mxchat_pinecone_addon_options'
wp option delete 'mxchat_license_status'
wp option delete 'mxchat_pro_email'
wp option delete 'mxchat_activation_key'
wp option delete 'mxchat_license_error'
wp option delete 'yikes_woo_reusable_products_tabs'
wp option delete 'mxchat_tag_role_mappings'
wp option delete 'mxchat_auto_sync_posts'
wp option delete 'mxchat_auto_sync_pages'
wp option delete 'mxchat_openai_vectorstore_options'
wp option delete 'mxchat_chat_count'
wp option delete 'mxchat_show_live_agent_disabled_notice'
wp option delete 'mxchat_show_theme_migration_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mxchat_history_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mxchat_email_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mxchat_agent_name_%'"
wp option delete 'mxchat_similarity_threshold'
wp option delete 'live_agent_webhook_url'
wp option delete 'mxchat_pro_license_status'
wp option delete 'mxchat_debug_log'
wp option delete 'mxchat_theme_options'
wp option delete 'mxchat_use_fallback_rate_limits'
wp option delete 'mxchat_next_rate_limit_check'
wp option delete 'mxchat_fallback_check_interval'
wp option delete 'mxchat_pinecone_roles_migration_version'
wp option delete 'mxchat_content_type_migration_version'
wp option delete 'mxchat_model_migrated_notice'
wp option delete 'mxchat_model_migration_message'
wp option delete 'mxchat_plugin_version'
wp option delete 'mxchat_live_agent_update_2_2_2_handled'
wp option delete 'mxchat_theme_migration_update_3_0_1_handled'

# Delete Transients
wp transient delete 'mxchat_admin_notice_error'
wp transient delete 'mxchat_admin_notice_success'
wp transient delete 'mxchat_active_queue_pdf'
wp transient delete 'mxchat_last_pdf_url'
wp transient delete 'mxchat_single_url_status'
wp transient delete 'mxchat_active_queue_sitemap'
wp transient delete 'mxchat_last_sitemap_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_pdf_status_%' OR option_name LIKE '_site_transient_mxchat_pdf_status_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_sitemap_status_%' OR option_name LIKE '_site_transient_mxchat_sitemap_status_%'"
wp transient delete 'mxchat_admin_notice_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_params' OR option_name LIKE '_site_transient_%_params'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_email_capture_%' OR option_name LIKE '_site_transient_mxchat_email_capture_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_waiting_for_pdf_url_%' OR option_name LIKE '_site_transient_mxchat_waiting_for_pdf_url_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_pdf_url_%' OR option_name LIKE '_site_transient_mxchat_pdf_url_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_pdf_filename_%' OR option_name LIKE '_site_transient_mxchat_pdf_filename_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_pdf_embeddings_%' OR option_name LIKE '_site_transient_mxchat_pdf_embeddings_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_include_pdf_in_context_%' OR option_name LIKE '_site_transient_mxchat_include_pdf_in_context_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_word_url_%' OR option_name LIKE '_site_transient_mxchat_word_url_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_word_embeddings_%' OR option_name LIKE '_site_transient_mxchat_word_embeddings_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_word_filename_%' OR option_name LIKE '_site_transient_mxchat_word_filename_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_include_word_in_context_%' OR option_name LIKE '_site_transient_mxchat_include_word_in_context_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_waiting_for_word_%' OR option_name LIKE '_site_transient_mxchat_waiting_for_word_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_telegram_messages_%' OR option_name LIKE '_site_transient_mxchat_telegram_messages_%'"
wp transient delete 'mxchat_slack_events'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_processed_messages_%' OR option_name LIKE '_site_transient_mxchat_processed_messages_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mxchat_delayed_settings_%' OR option_name LIKE '_site_transient_mxchat_delayed_settings_%'"
wp transient delete 'mxchat_cron_setup_guard'
wp transient delete 'mxchat_last_product'

# Clear Cron Jobs
wp cron event delete 'mxchat_cleanup_old_transcripts'
wp cron event delete 'mxchat_reset_rate_limits'
wp cron event delete 'mxchat_send_delayed_transcript'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mxchat_selected_knowledge_bot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mxchat_selected_knowledge_bot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mxchat_selected_knowledge_bot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mxchat_selected_knowledge_bot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yikes_woo_products_tabs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yikes_woo_products_tabs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yikes_woo_products_tabs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yikes_woo_products_tabs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yikes_woo_reusable_products_tabs_applied'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yikes_woo_reusable_products_tabs_applied'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yikes_woo_reusable_products_tabs_applied'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yikes_woo_reusable_products_tabs_applied'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxchat_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxchat_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxchat_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxchat_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxchat_content_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxchat_content_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxchat_content_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxchat_content_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxchat_fullwidth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxchat_fullwidth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxchat_fullwidth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxchat_fullwidth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxchat_hide_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxchat_hide_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxchat_hide_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxchat_hide_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxchat_image_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxchat_image_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxchat_image_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxchat_image_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxchat_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxchat_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxchat_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxchat_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxchat_image_prompt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxchat_image_prompt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxchat_image_prompt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxchat_image_prompt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'site-content-layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'site-sidebar-layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'site-sidebar-layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'site-sidebar-layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'site-sidebar-layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'site-post-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generate-sidebar-layout-meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generate-sidebar-layout-meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generate-sidebar-layout-meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generate-sidebar-layout-meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generate-full-width-content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generate-full-width-content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generate-full-width-content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generate-full-width-content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_generate-disable-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_generate-disable-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_generate-disable-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_generate-disable-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kad_post_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kad_post_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kad_post_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kad_post_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kad_post_content_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kad_post_content_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kad_post_content_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kad_post_content_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kad_post_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kad_post_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kad_post_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kad_post_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oceanwp_post_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oceanwp_post_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oceanwp_post_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oceanwp_post_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ocean_content_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ocean_content_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ocean_content_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ocean_content_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oceanwp_disable_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oceanwp_disable_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oceanwp_disable_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oceanwp_disable_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'neve_meta_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'neve_meta_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'neve_meta_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'neve_meta_sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'neve_meta_container'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'neve_meta_container'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'neve_meta_container'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'neve_meta_container'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'neve_meta_disable_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'neve_meta_disable_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'neve_meta_disable_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'neve_meta_disable_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_structure_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_structure_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_structure_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_structure_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_side_nav'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_side_nav'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_side_nav'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_side_nav'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_show_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_show_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_show_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_show_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxchat_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxchat_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxchat_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxchat_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxchat_hide_chatbot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxchat_hide_chatbot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxchat_hide_chatbot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxchat_hide_chatbot'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mxchat_selected_bot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mxchat_selected_bot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mxchat_selected_bot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mxchat_selected_bot'"
