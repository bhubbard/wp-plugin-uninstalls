#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kbx_order_tracking'
wp option delete 'kbx_floating_search_bot'
wp option delete 'kbx_floating_search_on'
wp option delete 'kbx_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_reason_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbot_deactivation_details_%'"
wp option delete 'open_ai_api_key'
wp option delete 'openai_engines'
wp option delete 'openai_max_tokens'
wp option delete 'openai_temperature'
wp option delete 'presence_penalty'
wp option delete 'frequency_penalty'
wp option delete 'kbx_qc_disable_floating_icon'
wp option delete 'qcld_ai_settings_open_ai'
wp option delete 'kbx_bot_position_x'
wp option delete 'kbx_bot_position_y'
wp option delete 'disable_kbx_bot_icon_animation'
wp option delete 'kbx_bot_host'
wp option delete 'kbx_bot_agent'
wp option delete 'kbx_bot_shopper_demo_name'
wp option delete 'kbx_wp_chatbot_shopper_call_you'
wp option delete 'kbx_bot_agent_join'
wp option delete 'kbx_bot_back_start'
wp option delete 'kbx_bot_welcome'
wp option delete 'kbx_bot_welcome_back'
wp option delete 'kbx_bot_hi_there'
wp option delete 'kbx_bot_asking_name'
wp option delete 'kbx_bot_i_am'
wp option delete 'kbx_bot_name_greeting'
wp option delete 'kbx_bot_wildcard_msg'
wp option delete 'kbx_bot_articles_search_msg'
wp option delete 'kbx_bot_empty_filter_msg'
wp option delete 'kbx_bot_articles_success'
wp option delete 'kbx_bot_articles_fail'
wp option delete 'kbx_bot_catalog_suggest'
wp option delete 'kbx_bot_is_typing'
wp option delete 'kbx_bot_articles_infinite_infinite'
wp option delete 'kbx_bot_wildcards_artilcs'
wp option delete 'kbx_bot_wildcards_list'
wp option delete 'kbx_bot_wildcard_support'
wp option delete 'kbx_bot_articles_support_phone'
wp option delete 'kbx_bot_support_welcome'
wp option delete 'kbx_bot_support_email'
wp option delete 'kbx_bot_asking_email'
wp option delete 'kbx_bot_asking_msg'
wp option delete 'kbx_bot_articles_asking_phone'
wp option delete 'support_query'
wp option delete 'support_ans'
wp option delete 'kbx_bot_send_msg'
wp option delete 'kbx_bot_hello'
wp option delete 'kbx_bot_yes'
wp option delete 'kbx_bot_no'
wp option delete 'kbx_bot_or'
wp option delete 'kbx_bot_sorry'
wp option delete 'kbx_bot_sys_key_help'
wp option delete 'kbx_bot_sys_key_catalog'
wp option delete 'kbx_bot_sys_key_support'
wp option delete 'kbx_bot_invalid_email'
wp option delete 'kbx_bot_sys_key_reset'
wp option delete 'kbx_bot_help_welcome'
wp option delete 'kbx_bot_help_msg'
wp option delete 'kbx_bot_reset'
wp option delete 'kbx_bot_articles_find_more'
wp option delete 'kbx_bot_articles_find_more_msg'
wp option delete 'kbx_bot_stop_words'
wp option delete 'enable_kbx_bot_dailogflow'
wp option delete 'qlcd_kbx_bot_dialogflow_client_token'
wp option delete 'qlcd_kbx_bot_dialogflow_defualt_reply'
wp option delete 'enable_kbx_bot_custom_intent'
wp option delete 'enable_kbx_bot_rich_response'
wp option delete 'disable_kbx_bot_article_search'
wp option delete 'disable_kbx_bot_article_list'
wp option delete 'disable_kbx_bot_call_me'
wp option delete 'disable_kbx_bot_support'
wp option delete 'kbx_bot_theme'
wp option delete 'kbx_bot_custom_agent_path'
wp option delete 'kbx_bot_agent_image'
wp option delete 'kbx_bot_product_orderby'
wp option delete 'kbx_bot_product_order'
wp option delete 'kbx_reading_time_options'
wp option delete 'kbx_parmalink_handled'
wp option delete 'kbx_flush_rewrite_rules_flag'
wp option delete 'wp_chatbot_position_x'
wp option delete 'wp_chatbot_position_y'
wp option delete 'disable_wp_chatbot'
wp option delete 'disable_wp_chatbot_icon_animation'
wp option delete 'disable_wp_chatbot_on_mobile'
wp option delete 'qlcd_wp_chatbot_admin_email'
wp option delete 'disable_wp_chatbot_product_search'
wp option delete 'disable_wp_chatbot_catalog'
wp option delete 'disable_wp_chatbot_order_status'
wp option delete 'enable_wp_chatbot_rtl'
wp option delete 'show_menu_after_greetings'
wp option delete 'enable_wp_chatbot_mobile_full_screen'
wp option delete 'wpbot_preloading_time'
wp option delete 'disable_wp_chatbot_notification'
wp option delete 'disable_wp_chatbot_cart_item_number'
wp option delete 'disable_wp_chatbot_featured_product'
wp option delete 'disable_wp_chatbot_sale_product'
wp option delete 'wp_chatbot_open_product_detail'
wp option delete 'qlcd_wp_chatbot_product_orderby'
wp option delete 'qlcd_wp_chatbot_product_order'
wp option delete 'qlcd_wp_chatbot_ppp'
wp option delete 'wp_chatbot_exclude_stock_out_product'
wp option delete 'wp_chatbot_show_sub_category'
wp option delete 'wp_chatbot_vertical_custom'
wp option delete 'wp_chatbot_show_home_page'
wp option delete 'qc_wpbot_menu_order'
wp option delete 'wp_chatbot_show_posts'
wp option delete 'wp_chatbot_show_pages'
wp option delete 'wp_chatbot_show_pages_list'
wp option delete 'wp_chatbot_show_wpcommerce'
wp option delete 'qlcd_wp_chatbot_stop_words_name'
wp option delete 'qlcd_wp_chatbot_stop_words'
wp option delete 'qlcd_wp_chatbot_order_user'
wp option delete 'wp_chatbot_custom_agent_path'
wp option delete 'wp_chatbot_custom_icon_path'
wp option delete 'wp_chatbot_icon'
wp option delete 'wp_chatbot_floatingiconbg_color'
wp option delete 'wp_chatbot_agent_image'
wp option delete 'qcld_wb_chatbot_theme'
wp option delete 'qcld_wb_chatbot_change_bg'
wp option delete 'wp_chatbot_custom_css'
wp option delete 'qlcd_wp_chatbot_host'
wp option delete 'qlcd_wp_chatbot_agent'
wp option delete 'qlcd_wp_chatbot_shopper_demo_name'
wp option delete 'qlcd_wp_chatbot_yes'
wp option delete 'qlcd_wp_chatbot_no'
wp option delete 'qlcd_wp_chatbot_or'
wp option delete 'qlcd_wp_chatbot_sorry'
wp option delete 'qlcd_wp_chatbot_dialogflow_project_id'
wp option delete 'wp_chatbot_df_api'
wp option delete 'qlcd_wp_chatbot_dialogflow_project_key'
wp option delete 'qlcd_wp_chatbot_agent_join'
wp option delete 'qlcd_wp_chatbot_welcome'
wp option delete 'qlcd_wp_chatbot_back_to_start'
wp option delete 'qlcd_wp_chatbot_hi_there'
wp option delete 'qlcd_wp_chatbot_welcome_back'
wp option delete 'qlcd_wp_chatbot_asking_name'
wp option delete 'qlcd_wp_chatbot_name_greeting'
wp option delete 'qlcd_wp_chatbot_i_am'
wp option delete 'qlcd_wp_chatbot_is_typing'
wp option delete 'qlcd_wp_chatbot_send_a_msg'
wp option delete 'qlcd_wp_chatbot_choose_option'
wp option delete 'qlcd_wp_chatbot_viewed_products'
wp option delete 'qlcd_wp_chatbot_add_to_cart'
wp option delete 'qlcd_wp_chatbot_cart_link'
wp option delete 'qlcd_wp_chatbot_checkout_link'
wp option delete 'qlcd_wp_chatbot_featured_product_welcome'
wp option delete 'qlcd_wp_chatbot_viewed_product_welcome'
wp option delete 'qlcd_wp_chatbot_latest_product_welcome'
wp option delete 'qlcd_wp_chatbot_cart_welcome'
wp option delete 'qlcd_wp_chatbot_cart_title'
wp option delete 'qlcd_wp_chatbot_cart_quantity'
wp option delete 'qlcd_wp_chatbot_cart_price'
wp option delete 'qlcd_wp_chatbot_no_cart_items'
wp option delete 'qlcd_wp_chatbot_cart_updating'
wp option delete 'qlcd_wp_chatbot_cart_removing'
wp option delete 'qlcd_wp_chatbot_wildcard_msg'
wp option delete 'qlcd_wp_chatbot_empty_filter_msg'
wp option delete 'qlcd_wp_chatbot_did_you_mean'
wp option delete 'qlcd_wp_chatbot_sys_key_help'
wp option delete 'qlcd_wp_chatbot_sys_key_product'
wp option delete 'qlcd_wp_chatbot_sys_key_catalog'
wp option delete 'qlcd_wp_chatbot_sys_key_order'
wp option delete 'qlcd_wp_chatbot_sys_key_support'
wp option delete 'qlcd_wp_chatbot_sys_key_reset'
wp option delete 'qlcd_wp_chatbot_help_welcome'
wp option delete 'qlcd_wp_chatbot_help_msg'
wp option delete 'qlcd_wp_chatbot_reset'
wp option delete 'qlcd_wp_chatbot_wildcard_product'
wp option delete 'qlcd_wp_chatbot_wildcard_catalog'
wp option delete 'qlcd_wp_chatbot_featured_products'
wp option delete 'qlcd_wp_chatbot_sale_products'
wp option delete 'qlcd_wp_chatbot_wildcard_support'
wp option delete 'qlcd_wp_chatbot_messenger_label'
wp option delete 'qlcd_wp_chatbot_product_success'
wp option delete 'qlcd_wp_chatbot_product_fail'
wp option delete 'qlcd_wp_chatbot_product_asking'
wp option delete 'qlcd_wp_chatbot_product_suggest'
wp option delete 'qlcd_wp_chatbot_product_infinite'
wp option delete 'qlcd_wp_chatbot_load_more'
wp option delete 'qlcd_wp_chatbot_wildcard_order'
wp option delete 'qlcd_wp_chatbot_order_welcome'
wp option delete 'qlcd_wp_chatbot_order_username_asking'
wp option delete 'qlcd_wp_chatbot_order_username_password'
wp option delete 'qlcd_wp_chatbot_order_username_not_exist'
wp option delete 'qlcd_wp_chatbot_order_username_thanks'
wp option delete 'qlcd_wp_chatbot_order_password_incorrect'
wp option delete 'qlcd_wp_chatbot_asking_email'
wp option delete 'qlcd_wp_chatbot_order_not_found'
wp option delete 'qlcd_wp_chatbot_order_found'
wp option delete 'qlcd_wp_chatbot_order_email_support'
wp option delete 'qlcd_wp_chatbot_support_welcome'
wp option delete 'qlcd_wp_chatbot_support_email'
wp option delete 'qlcd_wp_chatbot_asking_msg'
wp option delete 'qlcd_wp_chatbot_no_result'
wp option delete 'qlcd_wp_chatbot_invalid_email'
wp option delete 'qlcd_wp_chatbot_support_phone'
wp option delete 'qlcd_wp_chatbot_asking_phone'
wp option delete 'qlcd_wp_chatbot_thank_for_phone'
wp option delete 'qlcd_wp_chatbot_support_option_again'
wp option delete 'qlcd_wp_chatbot_email_sub'
wp option delete 'qlcd_wp_site_search'
wp option delete 'qlcd_wp_chatbot_email_sent'
wp option delete 'qlcd_wp_chatbot_email_fail'
wp option delete 'qlcd_wp_chatbot_notification_interval'
wp option delete 'qlcd_wp_chatbot_notifications'
wp option delete 'qlcd_wp_chatbot_search_option'
wp option delete 'wp_chatbot_index_count'
wp option delete 'wp_chatbot_app_pages'
wp option delete 'enable_wp_chatbot_messenger'
wp option delete 'enable_wp_chatbot_messenger_floating_icon'
wp option delete 'qlcd_wp_chatbot_fb_app_id'
wp option delete 'qlcd_wp_chatbot_fb_page_id'
wp option delete 'qlcd_wp_chatbot_fb_color'
wp option delete 'qlcd_wp_chatbot_fb_in_msg'
wp option delete 'qlcd_wp_chatbot_fb_out_msg'
wp option delete 'enable_wp_chatbot_skype_floating_icon'
wp option delete 'enable_wp_chatbot_skype_id'
wp option delete 'enable_wp_chatbot_whats'
wp option delete 'qlcd_wp_chatbot_whats_label'
wp option delete 'enable_wp_chatbot_floating_whats'
wp option delete 'qlcd_wp_chatbot_whats_num'
wp option delete 'enable_wp_chatbot_floating_viber'
wp option delete 'qlcd_wp_chatbot_viber_acc'
wp option delete 'enable_wp_chatbot_floating_phone'
wp option delete 'qlcd_wp_chatbot_phone'
wp option delete 'enable_wp_chatbot_floating_link'
wp option delete 'qlcd_wp_chatbot_weblink'
wp option delete 'qlcd_wp_chatbot_ret_greet'
wp option delete 'enable_wp_chatbot_exit_intent'
wp option delete 'wp_chatbot_exit_intent_msg'
wp option delete 'wp_chatbot_exit_intent_once'
wp option delete 'enable_wp_chatbot_scroll_open'
wp option delete 'wp_chatbot_scroll_open_msg'
wp option delete 'wp_chatbot_scroll_percent'
wp option delete 'wp_chatbot_scroll_once'
wp option delete 'enable_wp_chatbot_auto_open'
wp option delete 'enable_wp_chatbot_ret_sound'
wp option delete 'enable_wp_chatbot_sound_initial'
wp option delete 'wp_chatbot_auto_open_msg'
wp option delete 'wp_chatbot_auto_open_time'
wp option delete 'wp_chatbot_auto_open_once'
wp option delete 'wp_chatbot_inactive_once'
wp option delete 'enable_wp_chatbot_ret_user_show'
wp option delete 'wp_chatbot_checkout_msg'
wp option delete 'wp_chatbot_inactive_time'
wp option delete 'enable_wp_chatbot_inactive_time_show'
wp option delete 'wp_chatbot_proactive_bg_color'
wp option delete 'disable_wp_chatbot_feedback'
wp option delete 'disable_wp_chatbot_faq'
wp option delete 'qlcd_wp_chatbot_feedback_label'
wp option delete 'enable_wp_chatbot_meta_title'
wp option delete 'qlcd_wp_chatbot_meta_label'
wp option delete 'disable_wp_chatbot_call_gen'
wp option delete 'disable_wp_chatbot_site_search'
wp option delete 'disable_wp_chatbot_call_sup'
wp option delete 'qlcd_wp_chatbot_phone_sent'
wp option delete 'qlcd_wp_chatbot_phone_fail'
wp option delete 'enable_wp_chatbot_opening_hour'
wp option delete 'wpwbot_hours'
wp option delete 'enable_wp_chatbot_dailogflow'
wp option delete 'qlcd_wp_chatbot_dialogflow_client_token'
wp option delete 'qlcd_wp_chatbot_dialogflow_defualt_reply'
wp option delete 'qlcd_wp_chatbot_dialogflow_agent_language'
wp option delete 'wppt_post_types'
wp option delete 'wp_chatbot_index_meta'
wp option delete 'qlcd_wp_chatbot_from_email'
wp option delete 'wp_chatbot_exclude_post_list'
wp option delete 'qlcd_wp_chatbot_hello'
wp option delete 'qlcd_wp_chatbot_relevant_post_link_openai'
wp option delete 'qlcd_wp_chatbot_asking_search_keyword'
wp option delete 'qlcd_wp_chatbot_found_result'
wp option delete 'qlcd_wp_chatbot_sys_key_email'
wp option delete 'enable_wp_chatbot_custom_color'
wp option delete 'wp_chatbot_text_color'
wp option delete 'wp_chatbot_link_color'
wp option delete 'wp_chatbot_link_hover_color'
wp option delete 'wp_chatbot_bot_msg_bg_color'
wp option delete 'c'
wp option delete 'wp_chatbot_bot_msg_text_color'
wp option delete 'wp_chatbot_user_msg_bg_color'
wp option delete 'wp_chatbot_user_msg_text_color'
wp option delete 'wp_chatbot_buttons_bg_color'
wp option delete 'wp_chatbot_buttons_bg_color_hover'
wp option delete 'wp_chatbot_buttons_text_color'
wp option delete 'wp_chatbot_buttons_text_color_hover'
wp option delete 'wp_chatbot_header_background_color'
wp option delete 'wp_chatbot_theme_primary_color'
wp option delete 'wp_chatbot_theme_secondary_color'
wp option delete 'wp_chatbot_font_size'
wp option delete 'wp_chat_user_font_family'
wp option delete 'wp_chatbot_user_font'
wp option delete 'wp_chat_bot_font_family'
wp option delete 'wp_chatbot_bot_font'
wp option delete 'enable_wp_chatbot_post_content'
wp option delete 'qlcd_wp_chatbot_wildcard_site_search'
wp option delete 'qcld_wb_chatbot_board_bg_path'
wp option delete 'wp_chatbot_show_parent_category'
wp option delete 'wp_chatbot_app_order_thankyou'
wp option delete 'wpcommerce_myaccount_page_id'
wp option delete 'qlcd_wp_chatbot_shopping_cart'
wp option delete 'wp_chatbot_app_checkout'
wp option delete 'qlcd_wp_custon_intent_label'
wp option delete 'qcld_small_talk_imported'
wp option delete 'aws_reindex_version'
wp option delete 'is_asst_enabled'
wp option delete 'qcld_openai_assistants'
wp option delete 'qcld_openai_assistants_file'
wp option delete 'qcld_openai_suffix'
wp option delete 'ai_enabled'
wp option delete 'ai_only_mode'
wp option delete 'page_suggestion_enabled'
wp option delete 'openai_include_keyword'
wp option delete 'openai_exclude_keyword'
wp option delete 'qcld_openai_relevant_enabled'
wp option delete 'qcld_openai_prompt'
wp option delete 'qcld_openai_prompt_custom'
wp option delete 'qcld_openaiaddon_enter_license_key'
wp option delete 'qcld_openaiaddon_enter_envato_key'
wp option delete 'qcld_openaiaddon__buy_from_where'
wp option delete 'qcld_openaiaddon_site_type'
wp option delete 'qcld_openaiaddon_enter_license_or_purchase_key'
wp option delete 'qcld_openaiaddon_buy_from_where'
wp option delete 'openaiaddon_invalid_license'
wp option delete 'openaiaddon_valid_license'
wp option delete 'qcld_openai_custom_model'
wp option delete 'conversation_continuity'
wp option delete 'file_id'
wp option delete 'enable_wp_chatbot_disable_allicon'
wp option delete 'qcld_disable_start_menu'
wp option delete 'skip_wp_greetings'
wp option delete 'disable_email_subscription'
wp option delete 'disable_str_categories'
wp option delete 'disable_good_bye'
wp option delete 'qc_bot_str_weight'
wp option delete 'qc_bot_str_fields'
wp option delete 'wpbot-admin-notice-blackfriday'
wp option delete 'wpbot-admin-notice-oninstallation'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_dismiss'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_active_time'"
wp option delete 'qlcd_wp_chatbot_load_more_search'
wp option delete 'qc_bot_str_remove_stopwords'
wp option delete 'wp_custom_client_icon'
wp option delete 'enable_wp_chatbot_skype'
wp option delete 'enable_chat_session'
wp option delete 'wpcommerce_db_version'
wp option delete 'qc_wp_ludate_ck'
wp option delete 'qc_wpb_simple_response_db_upgrade_free2'
wp option delete 'qc_wp_db_engine_update_free'
wp option delete 'qc_wp_db_engine_update_free_unassign'
wp option delete 'qlcd_wp_chatbot_reset_lan'
wp option delete 'qlcd_wp_chatbot_close_lan'
wp option delete 'wppt_disable_taxes'
wp option delete 'wppt_heading_page'
wp option delete 'wppt_heading_post'
wp option delete 'wppt_number_of_result'
wp option delete 'wppt_result_orderby'
wp option delete 'wppt_result_order'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wppt_heading_%'"
wp option delete '_site_transient_update_plugins'
wp option delete 'wppt_enable_fuzzy_search'
wp option delete 'wppt_enable_alt_title'
wp option delete 'wppt_search_weight'
wp option delete 'wppt_fuzzy_data_generator_interval'
wp option delete 'wppt_fuzzy_data_generator_interval_type'
wp option delete 'wpbot_search_image_size'
wp option delete 'wpbot_search_result_new_window'
wp option delete 'qlcd_wp_chatbot_we_have_found'

# Delete Transients
wp transient delete 'bot_clear_cache'
wp transient delete 'qcld_update_openaiaddon_'
wp transient delete 'qcld_renew_openaiaddon__subscription'
wp transient delete 'get_openaiaddon_enter_license_notice_dismiss_transient'
wp transient delete 'get_openaiaddon_invalid_license_notice_dismiss_transient'
wp transient delete 'wpbot-admin-notice-oninstallation'

# Clear Cron Jobs
wp cron event delete 'wppt_fuzzy_data_generator_event_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_cats_user_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_cats_user_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_cats_user_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_cats_user_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_preview_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_preview_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_preview_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_preview_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_number_of_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_number_of_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_number_of_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_number_of_heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_heading_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_heading_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_heading_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_heading_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_writing_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_writing_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_writing_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_writing_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_writing_tone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_writing_tone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_writing_tone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_writing_tone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_modify_headings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_modify_headings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_modify_headings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_modify_headings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_add_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_add_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_add_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_add_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_add_tagline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_add_tagline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_add_tagline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_add_tagline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_add_intro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_add_intro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_add_intro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_add_intro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_add_conclusion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_add_conclusion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_add_conclusion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_add_conclusion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_anchor_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_anchor_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_anchor_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_anchor_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_target_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_target_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_target_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_target_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_generated_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_generated_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_generated_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_generated_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_cta_pos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_cta_pos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_cta_pos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_cta_pos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kbx_qc_floating_target_url_cta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kbx_qc_floating_target_url_cta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kbx_qc_floating_target_url_cta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kbx_qc_floating_target_url_cta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kpm_upvotes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kpm_upvotes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kpm_upvotes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kpm_upvotes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kpm_downvotes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kpm_downvotes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kpm_downvotes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kpm_downvotes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kpm_ranking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kpm_ranking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kpm_ranking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kpm_ranking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kpm_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kpm_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kpm_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kpm_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kpm_gterm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kpm_gterm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kpm_gterm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kpm_gterm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kpm_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kpm_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kpm_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kpm_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kpm_more_queries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kpm_more_queries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kpm_more_queries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kpm_more_queries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kpm_article_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kpm_article_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kpm_article_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kpm_article_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
