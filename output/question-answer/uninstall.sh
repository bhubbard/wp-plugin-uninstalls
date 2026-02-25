#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'question_answer_info'
wp option delete 'qa_reCAPTCHA_site_key'
wp option delete 'qa_submitted_question_status'
wp option delete 'qa_featured_questions'
wp option delete 'qa_welcome'
wp option delete 'qa_logo_url'
wp option delete 'qa_from_email'
wp option delete 'qa_email_templates_data'
wp option delete 'question_bm_logo_url'
wp option delete 'qa_question_item_per_page'
wp option delete 'qa_reCAPTCHA_secret_key'
wp option delete 'qa_options_filter_badwords'
wp option delete 'qa_options_badwords'
wp option delete 'qa_options_badwords_replacer'
wp option delete 'question_answer_settings'
wp option delete 'qa_enable_poll'
wp option delete 'qa_account_required_post_question'
wp option delete 'qa_page_question_post_redirect'
wp option delete 'qa_reCAPTCHA_enable_question'
wp option delete 'qa_options_quick_notes'
wp option delete 'qa_who_can_see_quick_notes'
wp option delete 'qa_answer_item_per_page'
wp option delete 'qa_account_required_post_answer'
wp option delete 'qa_submitted_answer_status'
wp option delete 'qa_show_answer_filter'
wp option delete 'qa_answer_filter_options'
wp option delete 'access_to_private_answer'
wp option delete 'qa_who_can_answer'
wp option delete 'qa_who_can_comment_answer'
wp option delete 'qa_can_edit_answer'
wp option delete 'qa_answer_editor_type'
wp option delete 'qa_answer_editor_media_buttons'
wp option delete 'qa_answer_reply_order'
wp option delete 'qa_page_question_post'
wp option delete 'qa_page_question_archive'
wp option delete 'qa_page_user_profile'
wp option delete 'qa_page_myaccount'
wp option delete 'single_question_access_role'
wp option delete 'qa_allow_question_comment'
wp option delete 'qa_myaccount_show_login_form'
wp option delete 'qa_myaccount_login_redirect_page'
wp option delete 'qa_myaccount_show_register_form'
wp option delete 'qa_color_archive_answer_count'
wp option delete 'qa_color_archive_view_count'
wp option delete 'qa_color_single_user_role'
wp option delete 'qa_color_single_user_role_background'
wp option delete 'qa_color_add_comment_background'
wp option delete 'qa_ask_button_bg_color'
wp option delete 'qa_color_best_answer_background'
wp option delete 'qa_vote_button_bg_color'
wp option delete 'qa_ask_button_text_color'
wp option delete 'qa_flag_button_bg_color'
wp option delete 'classified_maker_account_page_id'
wp option delete 'qa_myaccount_question_per_page'
wp option delete 'job_bm_job_submit_create_account'
wp option delete 'job_bm_job_submit_generate_username'
wp option delete 'qa_question_login_page_id'
wp option delete 'qa_myaccount_show_question_list'
wp option delete 'qa_myaccount_show_profile_management'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_answer_question_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_answer_question_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_answer_question_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_answer_question_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'import_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'import_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'import_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'import_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'import_source_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'import_source_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'import_source_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'import_source_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_answer_is_private'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_answer_is_private'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_answer_is_private'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_answer_is_private'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_question_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_question_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_question_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_question_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_featured_questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_featured_questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_featured_questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_featured_questions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mark_as_close'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mark_as_close'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mark_as_close'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mark_as_close'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_assign_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_assign_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_assign_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_assign_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_assign_to_send_mail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_assign_to_send_mail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_assign_to_send_mail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_assign_to_send_mail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'question_answer_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'question_answer_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'question_answer_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'question_answer_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_view_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_answer_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_answer_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_answer_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_answer_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'a_subscriber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'a_subscriber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'a_subscriber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'a_subscriber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_contact_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_contact_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_contact_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_contact_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'q_subscriber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'q_subscriber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'q_subscriber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'q_subscriber'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_visiblity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_visiblity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_visiblity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_visiblity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_activity_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_activity_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_activity_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_activity_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_activity_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_activity_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_activity_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_activity_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edit_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edit_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edit_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edit_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_flag_comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_flag_comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_flag_comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_flag_comment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_vote_comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_vote_comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_vote_comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_vote_comment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_follower'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_follower'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_follower'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_follower'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_following'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_following'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_following'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_following'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'search_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'search_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'search_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'search_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_meta_best_answer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_meta_best_answer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_meta_best_answer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_meta_best_answer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'polls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'polls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'polls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'polls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'poll_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'poll_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'poll_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'poll_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cover_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cover_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cover_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cover_photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_contact_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_contact_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_contact_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_contact_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_answer_review_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_answer_review_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_answer_review_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_answer_review_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_answer_review_users_up'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_answer_review_users_up'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_answer_review_users_up'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_answer_review_users_up'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_answer_review_users_down'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_answer_review_users_down'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_answer_review_users_down'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_answer_review_users_down'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qa_answer_question_id_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qa_answer_question_id_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qa_answer_question_id_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qa_answer_question_id_2'"
