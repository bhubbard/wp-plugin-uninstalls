#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'llms_allow_tracking'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'llms_update_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lifterlms_first_time_%'"
wp option delete 'llms_processor_data'
wp option delete 'llms_review'
wp option delete 'llms_lab_beaver-builder_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_delay'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'llms_admin_notice_%'"
wp option delete 'llms_admin_notices'
wp option delete 'lifterlms_country'
wp option delete 'lifterlms_currency'
wp option delete 'llms_gateway_manual_enabled'
wp option delete 'lifterlms_errors'
wp option delete 'lifterlms_course_completion_page_id'
wp option delete 'lifterlms_myaccount_page_id'
wp option delete 'lifterlms_terms_page_id'
wp option delete 'lifterlms_checkout_page_id'
wp option delete 'lifterlms_shop_page_id'
wp option delete 'llms_has_certificates_with_legacy_default_image'
wp option delete 'lifterlms_membership_required'
wp option delete 'lifterlms_memberships_page_id'
wp option delete 'llms_site_url_ignore'
wp option delete 'lifterlms_registration_generate_username'
wp option delete 'llms_access_plans_allow_skus'
wp option delete '_fl_builder_post_types'
wp option delete 'lifterlms_tracked_event_saving_frequency'
wp option delete 'lifterlms_prevent_concurrent_logins'
wp option delete 'lifterlms_prevent_concurrent_logins_roles'
wp option delete 'enabled'
wp option delete 'lifterlms_db_version'
wp option delete 'lifterlms_shop_courses_per_page'
wp option delete 'lifterlms_shop_ordering'
wp option delete 'lifterlms_memberships_per_page'
wp option delete 'lifterlms_memberships_ordering'
wp option delete 'lifterlms_myaccount_courses_endpoint'
wp option delete 'lifterlms_myaccount_edit_account_endpoint'
wp option delete 'lifterlms_myaccount_lost_password_endpoint'
wp option delete 'lifterlms_myaccount_redeem_vouchers_endpoint'
wp option delete 'lifterlms_registration_password_strength'
wp option delete 'lifterlms_registration_password_min_strength'
wp option delete 'lifterlms_registration_require_agree_to_terms'
wp option delete 'lifterlms_user_info_field_names_checkout_visibility'
wp option delete 'lifterlms_user_info_field_address_checkout_visibility'
wp option delete 'lifterlms_user_info_field_phone_checkout_visibility'
wp option delete 'lifterlms_user_info_field_email_confirmation_checkout_visibility'
wp option delete 'lifterlms_enable_myaccount_registration'
wp option delete 'lifterlms_user_info_field_names_registration_visibility'
wp option delete 'lifterlms_user_info_field_address_registration_visibility'
wp option delete 'lifterlms_user_info_field_phone_registration_visibility'
wp option delete 'lifterlms_voucher_field_registration_visibility'
wp option delete 'lifterlms_user_info_field_email_confirmation_registration_visibility'
wp option delete 'lifterlms_user_info_field_names_account_visibility'
wp option delete 'lifterlms_user_info_field_address_account_visibility'
wp option delete 'lifterlms_user_info_field_phone_account_visibility'
wp option delete 'lifterlms_user_info_field_email_confirmation_account_visibility'
wp option delete 'lifterlms_myaccount_confirm_payment_endpoint'
wp option delete 'lifterlms_checkout_force_ssl'
wp option delete 'lifterlms_currency_position'
wp option delete 'lifterlms_thousand_separator'
wp option delete 'lifterlms_decimal_separator'
wp option delete 'lifterlms_decimals'
wp option delete 'lifterlms_trim_zero_decimals'
wp option delete 'lifterlms_email_from_address'
wp option delete 'lifterlms_email_from_name'
wp option delete 'lifterlms_email_footer_text'
wp option delete 'lifterlms_email_header_image'
wp option delete 'lifterlms_certificate_bg_img_width'
wp option delete 'lifterlms_certificate_bg_img_height'
wp option delete 'lifterlms_certificate_legacy_image_size'
wp option delete 'lifterlms_content_protection'
wp option delete 'lifterlms_current_version'
wp option delete 'lifterlms_first_time_setup'
wp option delete '_llms_first_time_setup_redirect'
wp option delete 'lifterlms_permalinks'
wp option delete 'llms_site_url'
wp option delete 'llms_site_get_features'
wp option delete 'lifterlms_myaccount_courses_in_progress_sorting'
wp option delete 'lifterlms_myaccount_grades_endpoint'
wp option delete 'lifterlms_myaccount_memberships_endpoint'
wp option delete 'lifterlms_myaccount_achievements_endpoint'
wp option delete 'lifterlms_myaccount_certificates_endpoint'
wp option delete 'lifterlms_myaccount_notifications_endpoint'
wp option delete 'lifterlms_myaccount_orders_endpoint'
wp option delete 'lifterlms_myaccount_favorites_endpoint'
wp option delete 'llms_tracker_last_send_time'
wp option delete 'llms_forms_username_locations'
wp option delete 'llms_permalinks'
wp option delete 'lifterlms_certificate_default_user_defined_width'
wp option delete 'lifterlms_certificate_default_user_defined_height'
wp option delete 'lifterlms_certificate_default_user_defined_unit'
wp option delete 'lifterlms_favorites'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete 'llms_grant_site_access'
wp option delete 'llms_privacy_notice'
wp option delete 'llms_terms_notice'
wp option delete 'lifterlms_is_activated'
wp option delete 'lifterlms_update_key'
wp option delete 'lifterlms_authkey'
wp option delete 'lifterlms_activation_key'
wp option delete 'lifterlms_student_role_created'
wp option delete 'lifterlms_button_purchase_membership_custom_text'
wp option delete 'lifterlms_course_display_outline_lesson_thumbnails'
wp option delete 'lifterlms_course_display_author'
wp option delete 'lifterlms_course_display_banner'
wp option delete 'lifterlms_course_display_difficulty'
wp option delete 'lifterlms_course_display_length'
wp option delete 'lifterlms_course_display_categories'
wp option delete 'lifterlms_course_display_tags'
wp option delete 'lifterlms_course_display_tracks'
wp option delete 'lifterlms_lesson_nav_display_excerpt'
wp option delete 'lifterlms_course_display_outline'
wp option delete 'lifterlms_course_display_outline_titles'
wp option delete 'lifterlms_display_lesson_complete_placeholders'
wp option delete 'redirect_to_checkout'
wp option delete 'lifterlms_registration_confirm_email'
wp option delete 'lifterlms_registration_require_name'
wp option delete 'lifterlms_registration_require_address'
wp option delete 'lifterlms_registration_add_phone'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_visibility'"
wp option delete 'llms_integration_buddypress_enabled'
wp option delete 'llms_integration_buddypress_profile_endpoints'
wp option delete 'llms_pwc_notice'
wp option delete 'lifterlms_spam_protection'
wp option delete 'lifterlms_recurring_payment_retry'
wp option delete 'lifterlms_certificate_default_size'
wp option delete 'llms_erasure_request_removes_order_data'
wp option delete 'llms_erasure_request_removes_lms_data'
wp option delete 'lifterlms_akismet_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_site_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret_key'"
wp option delete 'lifterlms_captcha'
wp option delete 'lifterlms_recaptcha_min_score'
wp option delete 'llms_has_achievements_with_legacy_default_image'
wp option delete 'llms_integration_bbpress_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lifterlms_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pmpro_%'"
wp option delete 'classic-editor-allow-users'
wp option delete 'classic-editor-replace'
wp option delete 'llms_helper_version'
wp option delete 'llms_helper_options'
wp option delete 'llms_rest_version'
wp option delete 'lifterlms_retake_lessons'

# Delete Transients
wp transient delete 'llms_admin_notice_sidebars_delay'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_delay' OR option_name LIKE '_site_transient_%_delay'"
wp transient delete 'llms_products_api_result'
wp transient delete 'lifterlms_check_media_protection_files'
wp transient delete 'llms_update_3160_attempt_migration'
wp transient delete 'llms_3160_skipper_dupe_q'
wp transient delete 'llms_update_3160_ensure_no_dupe_question_rels_status'
wp transient delete 'llms_3160_skipper_dupe_l'
wp transient delete 'llms_update_3160_ensure_no_lesson_dupe_rels'
wp transient delete 'llms_3160_skipper_qdata'
wp transient delete 'llms_update_3160_update_question_data'
wp transient delete 'llms_update_3160_skipper'
wp transient delete 'llms_update_3160_update_attempt_question_data'
wp transient delete 'llms_update_4150_remove_orphan_access_plans'
wp transient delete 'llms_450_skipper_events_open_sessions'
wp transient delete 'llms_update_450_migrate_events_open_sessions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_llms_helper_keys_activation_response_%' OR option_name LIKE '_site_transient_llms_helper_keys_activation_response_%'"
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'llms_end_idle_sessions'
wp cron event delete 'llms_check_for_expired_memberships'
wp cron event delete 'lifterlms_cleanup_sessions'
wp cron event delete 'wp_session_garbage_collection'
wp cron event delete 'llms_helper_check_license_keys'
wp cron event delete 'lifterlms_cleanup_tmp'
wp cron event delete 'llms_send_tracking_data'
wp cron event delete 'lifterlms_engagement_award_achievement'
wp cron event delete 'lifterlms_engagement_award_certificate'
wp cron event delete 'lifterlms_engagement_send_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_media_protection_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_media_protection_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_media_protection_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_media_protection_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llms_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llms_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llms_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llms_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_quiz_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_quiz_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_quiz_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_quiz_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_reviews_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_reviews_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_reviews_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_reviews_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_display_reviews'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_display_reviews'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_display_reviews'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_display_reviews'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_num_reviews'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_num_reviews'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_num_reviews'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_num_reviews'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_multiple_reviews_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_multiple_reviews_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_multiple_reviews_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_multiple_reviews_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llms_builder_autosave'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llms_builder_autosave'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llms_builder_autosave'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llms_builder_autosave'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_parent_section'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_parent_section'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_parent_section'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_parent_section'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_parent_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_parent_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_parent_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_parent_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%restricted_levels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%restricted_levels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%restricted_levels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%restricted_levels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%trigger_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%trigger_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%trigger_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%trigger_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%engagement_trigger_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%engagement_trigger_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%engagement_trigger_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%engagement_trigger_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%engagement_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%engagement_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%engagement_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%engagement_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%engagement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%engagement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%engagement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%engagement'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%prerequisite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%prerequisite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%prerequisite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%prerequisite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_form_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_form_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_form_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_form_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_trigger_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_trigger_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_trigger_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_trigger_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_engagement_trigger_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_engagement_trigger_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_engagement_trigger_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_engagement_trigger_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_engagement_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_engagement_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_engagement_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_engagement_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_engagement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_engagement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_engagement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_engagement'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_engagement_delay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_engagement_delay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_engagement_delay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_engagement_delay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_beaver_builder_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_beaver_builder_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_beaver_builder_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_beaver_builder_migrated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_elementor_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_elementor_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_elementor_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_elementor_migrated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_achievement_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_achievement_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_achievement_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_achievement_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_achievement_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_achievement_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_achievement_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_achievement_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_achievement_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_achievement_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_achievement_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_achievement_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_achievement_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_achievement_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_achievement_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_achievement_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_certificate_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_certificate_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_certificate_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_certificate_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_certificate_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_certificate_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_certificate_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_certificate_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_certificate_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_certificate_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_certificate_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_certificate_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_export_filepath'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_export_filepath'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_export_filepath'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_export_filepath'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_auth_nonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_auth_nonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_auth_nonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_auth_nonce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_temp_gateway_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_temp_gateway_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_temp_gateway_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_temp_gateway_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_email_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_email_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_email_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_email_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_email_heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_email_heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_email_heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_email_heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_llms_email_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_llms_email_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_llms_email_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_llms_email_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_sales_page_content_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_sales_page_content_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_sales_page_content_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_sales_page_content_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_expiration_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_expiration_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_expiration_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_expiration_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_expiration_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_expiration_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_expiration_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_expiration_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_restricted_levels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_restricted_levels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_restricted_levels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_restricted_levels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_form_show_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_form_show_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_form_show_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_form_show_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_form_title_free_access_plans'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_form_title_free_access_plans'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_form_title_free_access_plans'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_form_title_free_access_plans'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_is_restricted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_is_restricted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_is_restricted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_is_restricted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_coupon_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_coupon_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_coupon_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_coupon_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_time_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_time_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_time_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_time_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_course_opens_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_course_opens_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_course_opens_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_course_opens_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_course_closed_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_course_closed_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_course_closed_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_course_closed_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_enable_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_enable_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_enable_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_enable_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_capacity_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_capacity_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_capacity_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_capacity_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_drip_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_drip_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_drip_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_drip_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_order_recurring_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_order_recurring_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_order_recurring_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_order_recurring_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_order_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_order_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_order_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_order_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_order_coupon_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_order_coupon_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_order_coupon_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_order_coupon_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_order_product_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_order_product_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_order_product_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_order_product_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_order_billing_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_order_billing_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_order_billing_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_order_billing_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_order_coupon_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_order_coupon_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_order_coupon_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_order_coupon_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_order_original_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_order_original_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_order_original_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_order_original_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llms_legacy_quiz_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llms_legacy_quiz_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llms_legacy_quiz_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llms_legacy_quiz_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llms_quiz_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llms_quiz_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llms_quiz_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llms_quiz_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_questions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_lesson_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_lesson_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_lesson_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_lesson_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_legacy_question_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_legacy_question_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_legacy_question_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_legacy_question_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_question_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_question_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_question_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_question_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_legacy_question_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_legacy_question_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_legacy_question_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_legacy_question_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_bbp_forum_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_bbp_forum_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_bbp_forum_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_bbp_forum_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%questions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_auto_enroll'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_auto_enroll'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_auto_enroll'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_auto_enroll'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_last_data_calc_run'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_last_data_calc_run'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_last_data_calc_run'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_last_data_calc_run'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_temp_calc_data_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_temp_calc_data_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_temp_calc_data_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_temp_calc_data_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_temp_calc_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_temp_calc_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_temp_calc_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_temp_calc_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_blocks_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_blocks_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_blocks_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_blocks_migrated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_llms_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_llms_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_llms_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_llms_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'classic-editor-remember'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'classic-editor-remember'"
