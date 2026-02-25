#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gma_options'
wp option delete 'gma_sticky_questions'
wp option delete 'gma_avatar'
wp option delete 'gma-smsnoti'
wp option delete 'gma-smsgateway'
wp option delete 'gma-admin-mobiles'
wp option delete 'gma_plugin_activated'
wp option delete 'gma_plugin_upgraded'
wp option delete 'gma_enable_email_delay'
wp option delete 'gma_subscrible_enable_new_question_notification'
wp option delete 'gma_subscrible_new_question_email_subject'
wp option delete 'gma_subscrible_send_copy_to_admin'
wp option delete 'gma_subscrible_enable_new_answer_followers_notification'
wp option delete 'gma_subscrible_new_answer_followers_email_subject'
wp option delete 'gma_subscrible_enable_new_answer_notification'
wp option delete 'gma_subscrible_new_answer_email_subject'
wp option delete 'gma_subscrible_enable_new_comment_question_notification'
wp option delete 'gma_subscrible_enable_new_comment_answer_notification'
wp option delete 'gma_subscrible_new_comment_question_email_subject'
wp option delete 'gma_subscrible_new_comment_answer_email_subject'
wp option delete 'gma_subscrible_email_logo'
wp option delete 'gma_subscrible_enable_new_comment_question_followers_notify'
wp option delete 'gma_subscrible_enable_new_comment_answer_followers_notification'
wp option delete 'gma_subscrible_new_comment_question_followers_email_subject'
wp option delete 'gma_subscrible_new_comment_answer_followers_email_subject'
wp option delete 'gma_subscrible_new_answer_forward'
wp option delete 'gma_subscrible_new_comment_question_forward'
wp option delete 'gma_subscrible_new_comment_answer_forward'
wp option delete 'gma_subscrible_sendto_address'
wp option delete 'gma_subscrible_from_address'
wp option delete 'gma_subscrible_from_name'
wp option delete 'gma_permission'
wp option delete 'gma_has_roles'
wp option delete 'gma-question-rewrite'
wp option delete 'gma-question-category-rewrite'
wp option delete 'gma-question-tag-rewrite'
wp option delete 'gma_subscrible_cc_address'
wp option delete 'gma_subscrible_bcc_address'
wp option delete 'gma_subscrible_new_question_email'
wp option delete 'gma_subscrible_new_answer_email'
wp option delete 'gma_subscrible_new_answer_followers_email'
wp option delete 'gma_subscrible_new_comment_question_email'
wp option delete 'gma_subscrible_new_comment_question_followers_email'
wp option delete 'gma_subscrible_new_comment_answer_email'
wp option delete 'gma_subscrible_new_comment_answer_followers_email'
wp option delete 'gma_avatar[size]'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gma-best-answer-for-%' OR option_name LIKE '_site_transient_gma-best-answer-for-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gma_latest_answer_for_%' OR option_name LIKE '_site_transient_gma_latest_answer_for_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gma_answer_count_for_%' OR option_name LIKE '_site_transient_gma_answer_count_for_%'"
wp transient delete 'gma_create_pages'
wp transient delete 'gma_system_status_wp_version_check'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_version_data' OR option_name LIKE '_site_transient_%_version_data'"
wp transient delete 'gma_users_pageid'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_postid' OR option_name LIKE '_site_transient_%_postid'"

# Clear Cron Jobs
wp cron event delete 'gma_hourly_event'
wp cron event delete 'gma_new_question_notify'
wp cron event delete 'gma_new_answer_notify'
wp cron event delete 'gma_new_comment_notify'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_best_answer_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_best_answer_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_best_answer_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_best_answer_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_best_answer_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_best_answer_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_best_answer_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_best_answer_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_best_answer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_best_answer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_best_answer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_best_answer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_votes_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_votes_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_votes_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_votes_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_is_anonymous'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_is_anonymous'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_is_anonymous'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_is_anonymous'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_anonymous_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_anonymous_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_anonymous_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_anonymous_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_anonymous_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_anonymous_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_anonymous_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_anonymous_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_followers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_followers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_followers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_followers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_who_viewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_who_viewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_who_viewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_who_viewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_resolved_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_resolved_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_resolved_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_resolved_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gma_picture_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gma_picture_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gma_picture_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gma_picture_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gma_picture_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gma_picture_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gma_picture_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gma_picture_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gma_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gma_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gma_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gma_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gma_about'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gma_about'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gma_about'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gma_about'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gma_university'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gma_university'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gma_university'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gma_university'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_answered_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_answered_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_answered_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_answered_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_answers_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_answers_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_answers_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_answers_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_created_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_created_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_created_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_created_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anonymous_author_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anonymous_author_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anonymous_author_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anonymous_author_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gma_close_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gma_close_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gma_close_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gma_close_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gma_answers_private_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gma_answers_private_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gma_answers_private_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gma_answers_private_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gma_is_blocked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gma_is_blocked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gma_is_blocked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gma_is_blocked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gma_block_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gma_block_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gma_block_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gma_block_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gma_block_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gma_block_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gma_block_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gma_block_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gma_profile_visit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gma_profile_visit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gma_profile_visit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gma_profile_visit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gma-user-wall-status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gma-user-wall-status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gma-user-wall-status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gma-user-wall-status'"
