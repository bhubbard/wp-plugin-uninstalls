#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bookify_payment_settings'
wp option delete 'mycred_pending_booking_rewards'
wp option delete 'mycred_pref_hooks'
wp option delete 'mycred_last_bookly_processed_id'
wp option delete 'mycred_bp_leaderboards'
wp option delete 'em_mycred_checkout_option_name'
wp option delete 'em_mycred_checkout_booking_feedback'
wp option delete 'em_mycred_checkout_booking_feedback_free'
wp option delete 'em_mycred_checkout_button'
wp option delete 'em_mycred_checkout_booking_feedback_completed'
wp option delete 'em_mycred_checkout_booking_feedback_cancelled'
wp option delete 'em_mycred_checkout_inc_tax'
wp option delete 'em_mycred_checkout_reserve_pending'
wp option delete 'em_offline_booking_feedback'
wp option delete 'em_mycred_elements_option_name'
wp option delete 'em_mycred_elements_booking_feedback'
wp option delete 'em_mycred_elements_booking_feedback_free'
wp option delete 'em_mycred_elements_booking_feedback_completed'
wp option delete 'em_mycred_elements_booking_feedback_cancelled'
wp option delete 'em_mycred_elements_inc_tax'
wp option delete 'em_mycred_elements_reserve_pending'
wp option delete 'emp_mycred_version'
wp option delete 'em_mycred_checkout_api'
wp option delete 'em_mycred_elements_api'
wp option delete 'em_mycred_elements_mode'
wp option delete 'em_mycred_checkout_mode'
wp option delete 'mycred_eventsmanager_gateway_prefs'
wp option delete 'dbem_bookings_currency_decimal_point'
wp option delete 'dbem_bookings_currency_thousands_sep'
wp option delete 'dbem_bookings_currency'
wp option delete 'dbem_bookings_currency_format'
wp option delete 'dbem_multiple_bookings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_manual_approval'"
wp option delete 'dbem_bookings_approval'
wp option delete 'dbem_bookings_anonymous'
wp option delete 'dbem_bookings_registration_disable'
wp option delete 'gi_import_types'
wp option delete 'gi_import_points'
wp option delete 'gi_import_badgs'
wp option delete 'gi_import_ranks'
wp option delete 'github_app_client_id'
wp option delete 'github_app_client_secret'
wp option delete 'github_connect_redirect_url'
wp option delete 'github_hook_url'
wp option delete 'github_account_info'
wp option delete 'github_account_selected_repositories'
wp option delete 'github_repositories'
wp option delete 'github_repositories_hooks'
wp option delete 'myCred_github_notices'
wp option delete 'allow_buy_course_pts'
wp option delete 'learndash_mycred_exchange_rate'
wp option delete 'learndash_point_type'
wp option delete 'learndash_allow_leaderboard'
wp option delete 'llms_gateway_mycred_lifterlms_profit_sharing'
wp option delete 'llms_gateway_mycred_lifterlms_log_template'
wp option delete 'llms_gateway_mycred_lifterlms_refund_log_template'
wp option delete 'llms_gateway_mycred_lifterlms_exchange_rate'
wp option delete 'payment_instructions'
wp option delete 'llms_gateway_mycred_lifterlms_point_type'
wp option delete 'llms_gateway_mycred_lifterlms_balance_label'
wp option delete 'llms_gateway_mycred_lifterlms_show_total'
wp option delete 'llms_gateway_mycred_lifterlms_total_label'
wp option delete 'llms_gateway_mycred_lifterlms_payment_instructions'
wp option delete 'my_total_option'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_llms_mycred_installment_amount_paid'"
wp option delete 'woocommerce_square_settings'
wp option delete 'woo_square_location_id_free'
wp option delete 'woo_square_access_token_free'
wp option delete 'mycred_pref_core'
wp option delete 'woo_square_auth_response'
wp option delete 'woo_square_access_token_cauth'
wp option delete 'woo_square_update_msg_dissmiss'
wp option delete 'woo_square_auth_notice'
wp option delete 'woo_square_locations_free'
wp option delete 'woo_square_business_name_free'

# Clear Cron Jobs
wp cron event delete 'mycred_bookingpress_check_and_award'
wp cron event delete 'mycred_bookly_check_appointments'
wp cron event delete 'pmpro_cron_myCred_subscription_updates'
wp cron event delete 'pmpro_myCred_subscription_charges'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mycred_badgr_entity_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mycred_badgr_entity_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mycred_badgr_entity_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mycred_badgr_entity_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mycred_badgr_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mycred_badgr_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mycred_badgr_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mycred_badgr_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_booking_reward_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_booking_reward_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_booking_reward_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_booking_reward_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mycred_booking_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mycred_booking_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mycred_booking_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mycred_booking_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_js_booking_reward'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_js_booking_reward'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_js_booking_reward'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_js_booking_reward'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_bp_leaderboard_position%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_bp_leaderboard_position%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_bp_leaderboard_position%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_bp_leaderboard_position%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mycred_credly_badge_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mycred_credly_badge_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mycred_credly_badge_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mycred_credly_badge_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mycred_credly_connected_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mycred_credly_connected_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mycred_credly_connected_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mycred_credly_connected_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mycred_tickets_reward_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mycred_tickets_reward_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mycred_tickets_reward_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mycred_tickets_reward_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'manual_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'manual_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'manual_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'manual_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'badge_prefs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'badge_prefs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'badge_prefs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'badge_prefs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gamipress_points_to_unlock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gamipress_points_to_unlock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gamipress_points_to_unlock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gamipress_points_to_unlock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gamipress_points_type_to_unlock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gamipress_points_type_to_unlock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gamipress_points_type_to_unlock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gamipress_points_type_to_unlock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'github_user_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'github_user_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'github_user_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'github_user_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allow_buy_course_pts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allow_buy_course_pts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allow_buy_course_pts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allow_buy_course_pts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-courses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'score_quiz_based'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'score_quiz_based'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'score_quiz_based'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'score_quiz_based'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'myCred_badges_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'myCred_badges_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'myCred_badges_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'myCred_badges_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lesson_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lesson_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lesson_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lesson_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'course_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leaderboard_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leaderboard_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leaderboard_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leaderboard_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leaderboard_course_based'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leaderboard_course_based'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leaderboard_course_based'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leaderboard_course_based'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leaderboard_lesson_based'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leaderboard_lesson_based'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leaderboard_lesson_based'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leaderboard_lesson_based'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leaderboard_topic_based'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leaderboard_topic_based'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leaderboard_topic_based'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leaderboard_topic_based'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leaderboard_quiz_based'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leaderboard_quiz_based'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leaderboard_quiz_based'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leaderboard_quiz_based'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leaderboard_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leaderboard_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leaderboard_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leaderboard_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'myCred_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'myCred_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'myCred_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'myCred_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'myCred_override_hook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'myCred_override_hook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'myCred_override_hook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'myCred_override_hook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'myCred_point_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'myCred_point_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'myCred_point_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'myCred_point_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'myCred_quiz_point_fail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'myCred_quiz_point_fail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'myCred_quiz_point_fail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'myCred_quiz_point_fail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'min_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'min_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'min_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'min_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'min_percentage_range'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'min_percentage_range'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'min_percentage_range'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'min_percentage_range'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'earn_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'earn_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'earn_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'earn_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'times'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'times'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'times'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'times'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'max_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'max_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'max_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'max_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_mycred_installment_amount_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_mycred_installment_amount_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_mycred_installment_amount_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_mycred_installment_amount_paid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pmpro_mycred_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pmpro_mycred_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pmpro_mycred_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pmpro_mycred_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_travel_email_traveller'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_travel_email_traveller'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_travel_email_traveller'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_travel_email_traveller'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_travel_booking_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_travel_booking_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_travel_booking_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_travel_booking_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_travel_payment_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_travel_payment_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_travel_payment_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_travel_payment_status'"
