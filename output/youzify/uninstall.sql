-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('youzify_review_is_done', 'youzify_review_is_dismissed', 'youzify_review_timestamp', 'youzify_poll_form_options', 'youzify_poll_result_options', 'youzify_poll_post_options', 'youzify_pages', 'youzify_extensions_list', 'youzify_unallowed_activities', 'youzify_install_new_widgets_login', 'youzify_profile_sidebar_widgets', 'youzify_social_networks', 'youzify_next_snetwork_nbr', 'hide-loggedout-adminbar', 'youzify_activation_timestamp', 'yz_next_snetwork_nbr', 'youzify_hide_old_patches', 'youzify_membership_pages', 'sidebars_widgets', 'youzify_membership_is_installed', 'youzify_xprofile_group_icon_1', 'youzify_xprofile_contact_info_group_ids', 'youzify_xprofile_profile_info_group_ids', 'woocommerce_myaccount_orders_endpoint', 'woocommerce_myaccount_downloads_endpoint', 'woocommerce_myaccount_edit_address_endpoint', 'woocommerce_myaccount_payment_methods_endpoint', 'woocommerce_myaccount_edit_account_endpoint', 'youzify_membership_login_retries', 'youzify_membership_login_lockouts', 'youzify_membership_total_lockouts', 'bp-pages', 'woocommerce_cart_redirect_after_add', 'woocommerce_ship_to_destination', 'woocommerce_enable_order_comments', 'youzify_extensions_list', 'youzify_get_woocommerce_endpoints');
DELETE FROM wp_options WHERE option_name LIKE '%_expires';
DELETE FROM wp_options WHERE option_name LIKE 'youzify_xprofile_group_icon_%';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE 'youzify_get_who_liked_activities_%';
DELETE FROM wp_options WHERE option_name LIKE 'youzify_count_user_groups_%';
DELETE FROM wp_options WHERE option_name LIKE 'youzify_count_user_posts_%';
DELETE FROM wp_options WHERE option_name LIKE 'youzify_user_activities_posts_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'youzify_user_activities_comments_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'youzify_shortcode_register_%';
DELETE FROM wp_options WHERE option_name LIKE 'youzify_flickr_feed_%';
DELETE FROM wp_options WHERE option_name LIKE 'youzify_instagram_feed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('youzify_type_icon', 'youzify_type_bg_left_color', 'youzify_type_bg_right_color', '_bp_account_deactivator_status', 'youzify_wg_flickr_account_id', 'youzify_account_verified', '_youzify_membership_core', 'tutor_course_certificate_template', 'youzify_profile_views_count', 'youzify_profile_views_ip', 'youzify_lighting_mode', 'youzify_wg_instagram_account_token', 'youzify_wg_instagram_account_user_data', 'gamipress_email_settings', 'google2fa_ts', 'youzify_enable_2fa_login', 'youzify_social_avatar', 'first_name', 'last_name', 'activation_key', 'youzify_user_reviews_count', 'youzify_user_ratings_rate', '_sfwd-quizzes', 'youzify_wc_purchase_activity', '_purchase_note');
DELETE FROM wp_usermeta WHERE meta_key IN ('youzify_type_icon', 'youzify_type_bg_left_color', 'youzify_type_bg_right_color', '_bp_account_deactivator_status', 'youzify_wg_flickr_account_id', 'youzify_account_verified', '_youzify_membership_core', 'tutor_course_certificate_template', 'youzify_profile_views_count', 'youzify_profile_views_ip', 'youzify_lighting_mode', 'youzify_wg_instagram_account_token', 'youzify_wg_instagram_account_user_data', 'gamipress_email_settings', 'google2fa_ts', 'youzify_enable_2fa_login', 'youzify_social_avatar', 'first_name', 'last_name', 'activation_key', 'youzify_user_reviews_count', 'youzify_user_ratings_rate', '_sfwd-quizzes', 'youzify_wc_purchase_activity', '_purchase_note');
DELETE FROM wp_termmeta WHERE meta_key IN ('youzify_type_icon', 'youzify_type_bg_left_color', 'youzify_type_bg_right_color', '_bp_account_deactivator_status', 'youzify_wg_flickr_account_id', 'youzify_account_verified', '_youzify_membership_core', 'tutor_course_certificate_template', 'youzify_profile_views_count', 'youzify_profile_views_ip', 'youzify_lighting_mode', 'youzify_wg_instagram_account_token', 'youzify_wg_instagram_account_user_data', 'gamipress_email_settings', 'google2fa_ts', 'youzify_enable_2fa_login', 'youzify_social_avatar', 'first_name', 'last_name', 'activation_key', 'youzify_user_reviews_count', 'youzify_user_ratings_rate', '_sfwd-quizzes', 'youzify_wc_purchase_activity', '_purchase_note');
DELETE FROM wp_commentmeta WHERE meta_key IN ('youzify_type_icon', 'youzify_type_bg_left_color', 'youzify_type_bg_right_color', '_bp_account_deactivator_status', 'youzify_wg_flickr_account_id', 'youzify_account_verified', '_youzify_membership_core', 'tutor_course_certificate_template', 'youzify_profile_views_count', 'youzify_profile_views_ip', 'youzify_lighting_mode', 'youzify_wg_instagram_account_token', 'youzify_wg_instagram_account_user_data', 'gamipress_email_settings', 'google2fa_ts', 'youzify_enable_2fa_login', 'youzify_social_avatar', 'first_name', 'last_name', 'activation_key', 'youzify_user_reviews_count', 'youzify_user_ratings_rate', '_sfwd-quizzes', 'youzify_wc_purchase_activity', '_purchase_note');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_account_user_data';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_account_user_data';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_account_user_data';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_account_user_data';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'course_completed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'course_completed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'course_completed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'course_completed_%';

