#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfb_enable_fbbot'
wp option delete 'wpfb_verify_token'
wp option delete 'wpfb_app_id'
wp option delete 'wpfb_app_secret'
wp option delete 'wpfb_user_access_token'
wp option delete 'wpfb_page_access_token'
wp option delete 'wpfb_default_instruction'
wp option delete 'wpfb_default_no_match'
wp option delete 'wpfb_command_live_agent'
wp option delete 'wpfb_contact_admin_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bot_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feedback'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feedback_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sitesearch'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_subscription'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feedback_msg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_phone'"
wp option delete 'wp_chatbot_df_api'
wp option delete 'support_query'
wp option delete 'support_ans'
wp option delete 'qlcd_wp_chatbot_sys_key_support'
wp option delete 'qlcd_wp_site_search'
wp option delete 'qlcd_wp_chatbot_support_phone'
wp option delete 'qlcd_wp_chatbot_support_email'
wp option delete 'qlcd_wp_chatbot_dialogflow_agent_language'
wp option delete 'qlcd_wp_chatbot_dialogflow_client_token'
wp option delete 'qlcd_wp_chatbot_dialogflow_defualt_reply'
wp option delete 'qlcd_wp_chatbot_wildcard_msg'
wp option delete 'qlcd_wp_send_us_email'
wp option delete 'qlcd_wp_chatbot_asking_email'
wp option delete 'qlcd_wp_chatbot_search_keyword'
wp option delete 'qlcd_woo_chatbot_asking_email'
wp option delete 'qlcd_wp_chatbot_asking_msg'
wp option delete 'qlcd_wp_chatbot_admin_email'
wp option delete 'qlcd_wp_chatbot_email_fail'
wp option delete 'qlcd_wp_chatbot_email_sent'
wp option delete 'qlcd_wp_chatbot_asking_phone'
wp option delete 'qlcd_woo_chatbot_asking_phone'
wp option delete 'qlcd_wp_chatbot_phone_sent'
wp option delete 'qlcd_woo_chatbot_phone_sent'
wp option delete 'qlcd_wp_email_subscription_success'
wp option delete 'qlcd_wp_email_already_subscribe'
wp option delete 'wpwl_word_wpbot'
wp option delete 'wpwo_word_wpbot'
wp option delete 'qc_get_started_new'
wp option delete 'qlcd_wp_chatbot_dialogflow_project_id'
wp option delete 'qlcd_wp_chatbot_dialogflow_project_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'private_reply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'private_reply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'private_reply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'private_reply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_reply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_reply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_reply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_reply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'private_reply_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'private_reply_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'private_reply_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'private_reply_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reply_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reply_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reply_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reply_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'condition_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'condition_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'condition_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'condition_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reply_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reply_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reply_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reply_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_reply_is_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_reply_is_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_reply_is_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_reply_is_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_reply_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_reply_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_reply_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_reply_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_condition_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_condition_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_condition_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_condition_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_reply_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_reply_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_reply_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_reply_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfb_enable_comment_campaign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfb_enable_comment_campaign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfb_enable_comment_campaign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfb_enable_comment_campaign'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfb_comment_campaign_schedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfb_comment_campaign_schedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfb_comment_campaign_schedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfb_comment_campaign_schedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfb_periodic_schedule_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfb_periodic_schedule_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfb_periodic_schedule_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfb_periodic_schedule_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfb_campaign_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfb_campaign_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfb_campaign_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfb_campaign_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfb_campaign_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfb_campaign_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfb_campaign_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfb_campaign_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfb_campaign_comment_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfb_campaign_comment_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfb_campaign_comment_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfb_campaign_comment_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_private_reply_from_df'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_private_reply_from_df'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_private_reply_from_df'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_private_reply_from_df'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_comment_reply_from_df'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_comment_reply_from_df'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_comment_reply_from_df'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_comment_reply_from_df'"
