#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wps_wpr_notificatin_array'
wp option delete 'onboarding-data-sent'
wp option delete 'wps_wpr_notify_new_msg_id'
wp option delete 'wps_wpr_notify_new_message'
wp option delete 'wps_wpr_notify_hide_notification'
wp option delete 'wps_wsfw_enable'
wp option delete 'wps_wgm_notify_new_banner_id'
wp option delete 'wps_wgm_notify_new_banner_image'
wp option delete 'wps_wgm_notify_new_banner_url'
wp option delete 'wps_wgm_notify_hide_baneer_notification'
wp option delete 'wps_wpr_other_settings'
wp option delete 'wps_wpr_settings_gallery'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wps_wpr_guest_user_points_%'"
wp option delete 'wps_wpr_klaviyo_public_api_key'
wp option delete 'wps_wpr_campaign_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wps_wpr_points_to_per_categ_%'"
wp option delete 'wps_wpr_product_purchase_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wps_wpr_purchase_points_cat%'"
wp option delete 'wps_wpr_api_features_settings'
wp option delete 'wps_wpr_notification_addon_settings'
wp option delete 'wps_wpr_number_items_per_page'
wp option delete 'wps_wpr_user_imported'
wp option delete 'wps_wpr_coupons_gallery'
wp option delete 'wps_wpr_assign_products_points'
wp option delete 'wps_wpr_membership_settings'
wp option delete 'wps_wpr_set_expiry_for_old_users'
wp option delete 'wps_wpr_order_total_settings'
wp option delete 'wps_wpr_save_gami_setting'
wp option delete 'wps_wpr_save_sms_settings'
wp option delete 'wps_wpr_user_badges_setting'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'onboarding-data-skipped'
wp option delete 'active_sitewide_plugins'
wp option delete 'refereeid'
wp option delete 'wps_wpr_check_points_discount_applied_amount'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_myaccount_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wps_wpr_campaign_login_data_%'"
wp option delete 'wps_wpr_points_expiration_settings'
wp option delete 'wps_wpr_user_can_send_point'

# Clear Cron Jobs
wp cron event delete 'wps_wpr_check_for_notification_update'
wp cron event delete 'wps_wgm_check_for_notification_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'membership_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'membership_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'membership_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'membership_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_referral_counting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_referral_counting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_referral_counting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_referral_counting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_redeemed_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_redeemed_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_redeemed_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_redeemed_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_overall__accumulated_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_overall__accumulated_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_overall__accumulated_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_overall__accumulated_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'points_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'points_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'points_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'points_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paid_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paid_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paid_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paid_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_commission_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_commission_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_commission_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_commission_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_payment_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_restrict_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_restrict_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_restrict_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_restrict_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_payment_rewards_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_payment_rewards_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_payment_rewards_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_payment_rewards_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_payment_method_rewards_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_payment_method_rewards_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_payment_method_rewards_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_payment_method_rewards_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_payment_points_refunded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_payment_points_refunded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_payment_points_refunded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_payment_points_refunded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_user_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_user_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_user_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_user_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_stop_sms_notify'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_stop_sms_notify'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_stop_sms_notify'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_stop_sms_notify'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_stop_whatsapp_notify'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_stop_whatsapp_notify'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_stop_whatsapp_notify'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_stop_whatsapp_notify'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_check_game_points_assign_timing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_check_game_points_assign_timing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_check_game_points_assign_timing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_check_game_points_assign_timing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_points_referral'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_points_referral'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_points_referral'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_points_referral'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_points_referral_invite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_points_referral_invite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_points_referral_invite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_points_referral_invite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_total_referral_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_total_referral_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_total_referral_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_total_referral_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_store_referral_user_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_store_referral_user_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_store_referral_user_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_store_referral_user_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_no_of_orders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_no_of_orders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_no_of_orders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_no_of_orders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_rewards_points_awarded_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_rewards_points_awarded_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_rewards_points_awarded_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_rewards_points_awarded_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'membership_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'membership_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'membership_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'membership_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wallet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wallet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wallet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wallet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_orders_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_orders_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_orders_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_orders_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_store_random_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_store_random_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_store_random_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_store_random_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_assigned_badges_level_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_assigned_badges_level_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_assigned_badges_level_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_assigned_badges_level_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_index_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_index_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_index_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_index_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_assigned_badges_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_assigned_badges_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_assigned_badges_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_assigned_badges_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_guest_user_assign_points_done'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_guest_user_assign_points_done'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_guest_user_assign_points_done'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_guest_user_assign_points_done'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_my_bday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_my_bday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_my_bday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_my_bday'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'points_on_birthday_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'points_on_birthday_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'points_on_birthday_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'points_on_birthday_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wps_wpr_quiz_points_rewarded_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wps_wpr_quiz_points_rewarded_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wps_wpr_quiz_points_rewarded_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wps_wpr_quiz_points_rewarded_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_social_action_performed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_social_action_performed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_social_action_performed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_social_action_performed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wps_wpr_points_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wps_wpr_points_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wps_wpr_points_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wps_wpr_points_expiration_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
