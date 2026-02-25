#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qhub_default_question_output'
wp option delete 'qhub_default_before_question'
wp option delete 'qhub_default_after_question'
wp option delete 'qhub_user_url'
wp option delete 'qhub_user_id'
wp option delete 'qhub_user_password'
wp option delete 'qhub_user_apikey'
wp option delete 'qhub_default_noquestion_txt'
wp option delete 'qhub_default_title_txt'
wp option delete 'qhub_default_showme'
wp option delete 'qhub_default_showby'
wp option delete 'qhub_default_api_order'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qhub_numbertoshow_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qhub_numbertoshow_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qhub_numbertoshow_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qhub_numbertoshow_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qhub_output_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qhub_output_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qhub_output_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qhub_output_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qhub_tags_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qhub_tags_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qhub_tags_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qhub_tags_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qhub_displayanswered_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qhub_displayanswered_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qhub_displayanswered_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qhub_displayanswered_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_value'"
