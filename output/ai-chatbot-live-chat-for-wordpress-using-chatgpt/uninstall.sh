#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_chatbot_adminsettings'
wp option delete 'ai_chatbot_question_action'
wp option delete 'ai_chatbot_rating_action'
wp option delete 'ai_chatbot_chatbot_widget'
wp option delete 'ai_chatbot_botdata_ids'
wp option delete 'ai_chatbot_is_public'
wp option delete 'ai_chatbot_get_script'
wp option delete 'ai_chatbot_otp'
wp option delete 'ai_chatbot_startup'
wp option delete 'ai_chatbot_current_page'
wp option delete 'ai_chatbot_getotp'
wp option delete 'ai_chatbot_otpcheck'
wp option delete 'ai_chatbot_userplan'
wp option delete 'ai_chatbot_add_website'
wp option delete 'ai_chatbot_test_get_res1'
wp option delete 'ai_chatbot_r_req'
wp option delete 'ai_chatbot_test_1'
wp option delete 'ai_chatbot_test_2'
wp option delete 'ai_chatbot_test_3'
wp option delete 'ai_chatbot_botsend_last_response'
wp option delete 'ai_chatbot_widget'

# Clear Cron Jobs
wp cron event delete 'Robofy_Ai_Chatbot_send_data_cron_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
