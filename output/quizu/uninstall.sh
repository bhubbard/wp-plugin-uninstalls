#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quizu_settings_email_address'
wp option delete 'quizu_settings_email_name'
wp option delete 'quizu_settings_default_color'
wp option delete 'quizu_settings_autosave_flag'
wp option delete 'quizu_settings_autosave_quiz_flag'
wp option delete 'quizu_settings_defaults_stored'
wp option delete 'quizu_settings_permissions'
wp option delete 'quizu_settings_user_login_flag'
wp option delete 'quizu_settings_texts_overlap'
wp option delete 'quizu_settings_texts_integer'
wp option delete 'quizu_settings_texts_reset'
wp option delete 'quizu_settings_texts_next'
wp option delete 'quizu_settings_texts_essay_error'
wp option delete 'quizu_settings_texts_checked_error'
wp option delete 'quizu_settings_texts_error'
wp option delete 'quizu_settings_texts_share'
wp option delete 'quizu_settings_texts_email'
wp option delete 'quizu_settings_texts_send'
wp option delete 'quizu_settings_email_message'
wp option delete 'quizu_settings_email_subject'
wp option delete 'quizu_settings_texts_post_email'
wp option delete 'quizu_settings_texts_email_error'
wp option delete 'quizu_settings_texts_total_score'
wp option delete 'quizu_settings_social_sharing_flag'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'quizu_settings_texts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'quizu_settings_email_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'quizu_settings_permanent_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'quizu_settings_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quizu_user_login_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quizu_user_login_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quizu_user_login_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quizu_user_login_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quizu_show_scores_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quizu_show_scores_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quizu_show_scores_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quizu_show_scores_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quizu_result_criteria_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quizu_result_criteria_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quizu_result_criteria_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quizu_result_criteria_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_quizu_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_quizu_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_quizu_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_quizu_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quizu_questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quizu_questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quizu_questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quizu_questions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quizu_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quizu_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quizu_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quizu_results'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quizu_linked_quiz'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quizu_linked_quiz'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quizu_linked_quiz'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quizu_linked_quiz'"
