#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'youzify_review_is_done'
wp option delete 'youzify_review_is_dismissed'
wp option delete 'youzify_review_timestamp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_expires'"
wp option delete 'youzify_poll_form_options'
wp option delete 'youzify_poll_result_options'
wp option delete 'youzify_poll_post_options'
wp option delete 'youzify_pages'
wp option delete 'youzify_extensions_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'youzify_xprofile_group_icon_%'"
wp option delete 'youzify_unallowed_activities'
wp option delete 'youzify_install_new_widgets_login'
wp option delete 'youzify_profile_sidebar_widgets'
wp option delete 'youzify_social_networks'
wp option delete 'youzify_next_snetwork_nbr'
wp option delete 'hide-loggedout-adminbar'
wp option delete 'youzify_activation_timestamp'
wp option delete 'yz_next_snetwork_nbr'
wp option delete 'youzify_hide_old_patches'
wp option delete 'youzify_membership_pages'
wp option delete 'sidebars_widgets'
wp option delete 'youzify_membership_is_installed'
wp option delete 'youzify_xprofile_group_icon_1'
wp option delete 'youzify_xprofile_contact_info_group_ids'
wp option delete 'youzify_xprofile_profile_info_group_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'woocommerce_myaccount_orders_endpoint'
wp option delete 'woocommerce_myaccount_downloads_endpoint'
wp option delete 'woocommerce_myaccount_edit_address_endpoint'
wp option delete 'woocommerce_myaccount_payment_methods_endpoint'
wp option delete 'woocommerce_myaccount_edit_account_endpoint'
wp option delete 'youzify_membership_login_retries'
wp option delete 'youzify_membership_login_lockouts'
wp option delete 'youzify_membership_total_lockouts'
wp option delete 'bp-pages'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_order_comments'

# Delete Transients
wp transient delete 'youzify_extensions_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_youzify_get_who_liked_activities_%' OR option_name LIKE '_site_transient_youzify_get_who_liked_activities_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_youzify_count_user_groups_%' OR option_name LIKE '_site_transient_youzify_count_user_groups_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_youzify_count_user_posts_%' OR option_name LIKE '_site_transient_youzify_count_user_posts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_youzify_user_activities_posts_count_%' OR option_name LIKE '_site_transient_youzify_user_activities_posts_count_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_youzify_user_activities_comments_count_%' OR option_name LIKE '_site_transient_youzify_user_activities_comments_count_%'"
wp transient delete 'youzify_get_woocommerce_endpoints'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_youzify_shortcode_register_%' OR option_name LIKE '_site_transient_youzify_shortcode_register_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_youzify_flickr_feed_%' OR option_name LIKE '_site_transient_youzify_flickr_feed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_youzify_instagram_feed_%' OR option_name LIKE '_site_transient_youzify_instagram_feed_%'"

# Clear Cron Jobs
wp cron event delete 'youzify_delete_media_temporary_files'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youzify_type_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youzify_type_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youzify_type_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youzify_type_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youzify_type_bg_left_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youzify_type_bg_left_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youzify_type_bg_left_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youzify_type_bg_left_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youzify_type_bg_right_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youzify_type_bg_right_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youzify_type_bg_right_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youzify_type_bg_right_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bp_account_deactivator_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bp_account_deactivator_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bp_account_deactivator_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bp_account_deactivator_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youzify_wg_flickr_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youzify_wg_flickr_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youzify_wg_flickr_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youzify_wg_flickr_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_account_user_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_account_user_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_account_user_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_account_user_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youzify_account_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youzify_account_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youzify_account_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youzify_account_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_youzify_membership_core'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_youzify_membership_core'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_youzify_membership_core'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_youzify_membership_core'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tutor_course_certificate_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tutor_course_certificate_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tutor_course_certificate_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tutor_course_certificate_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youzify_profile_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youzify_profile_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youzify_profile_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youzify_profile_views_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youzify_profile_views_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youzify_profile_views_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youzify_profile_views_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youzify_profile_views_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youzify_lighting_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youzify_lighting_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youzify_lighting_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youzify_lighting_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youzify_wg_instagram_account_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youzify_wg_instagram_account_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youzify_wg_instagram_account_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youzify_wg_instagram_account_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youzify_wg_instagram_account_user_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youzify_wg_instagram_account_user_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youzify_wg_instagram_account_user_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youzify_wg_instagram_account_user_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gamipress_email_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gamipress_email_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gamipress_email_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gamipress_email_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'google2fa_ts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'google2fa_ts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'google2fa_ts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'google2fa_ts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youzify_enable_2fa_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youzify_enable_2fa_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youzify_enable_2fa_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youzify_enable_2fa_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youzify_social_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youzify_social_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youzify_social_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youzify_social_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activation_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activation_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activation_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activation_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youzify_user_reviews_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youzify_user_reviews_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youzify_user_reviews_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youzify_user_reviews_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youzify_user_ratings_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youzify_user_ratings_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youzify_user_ratings_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youzify_user_ratings_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'course_completed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'course_completed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'course_completed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'course_completed_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sfwd-quizzes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'youzify_wc_purchase_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'youzify_wc_purchase_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'youzify_wc_purchase_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'youzify_wc_purchase_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_purchase_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_purchase_note'"
