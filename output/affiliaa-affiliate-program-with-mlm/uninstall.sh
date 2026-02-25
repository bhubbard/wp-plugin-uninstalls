#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtwwwap_referral_noti'
wp option delete 'rtwwwap_levels_settings_opt'
wp option delete 'rtwwwap_commission_settings'
wp option delete 'rtwwwap_extra_features_opt'
wp option delete 'rtwwwap_commission_settings_opt'
wp option delete 'rtwwwap_custom_banner_opt'
wp option delete 'rtwalwm_email_features_opt'
wp option delete 'customize_email'
wp option delete 'rtwwwap_affiliate_page_id'
wp option delete 'rtwalwm_noti_arr'
wp option delete 'rtwwwap_mlm_opt'
wp option delete 'rtwalwm_affiliate_page_id'
wp option delete 'rtwalwm_levels_settings_opt'
wp option delete 'rtwalwm_affiliate_lite'
wp option delete 'rtwalwm_db_version'
wp option delete 'rtwalwm_extra_features_opt'
wp option delete 'rtwalwm_referral_noti'
wp option delete 'rtwalwm_commission_settings_opt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwwwap_aff_approved'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwwwap_aff_approved'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwwwap_aff_approved'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwwwap_aff_approved'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwalwm_affiliate_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwalwm_affiliate_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwalwm_affiliate_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwalwm_affiliate_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwalwm_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwalwm_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwalwm_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwalwm_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwalwm_direct'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwalwm_direct'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwalwm_direct'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwalwm_direct'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtw_user_wallet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtw_user_wallet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtw_user_wallet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtw_user_wallet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwwwap_affiliate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwwwap_affiliate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwwwap_affiliate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwwwap_affiliate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwalwm_percentage_commission_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwalwm_percentage_commission_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwalwm_percentage_commission_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwalwm_percentage_commission_box'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwalwm_fixed_commission_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwalwm_fixed_commission_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwalwm_fixed_commission_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwalwm_fixed_commission_box'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwalwm_perf_bonus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwalwm_perf_bonus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwalwm_perf_bonus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwalwm_perf_bonus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwalwm_coupon_aff_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwalwm_coupon_aff_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwalwm_coupon_aff_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwalwm_coupon_aff_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwalwm_coupon_save'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwalwm_coupon_save'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwalwm_coupon_save'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwalwm_coupon_save'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwwwap_referral_mail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwwwap_referral_mail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwwwap_referral_mail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwwwap_referral_mail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtwalwm_referee_custom_str'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtwalwm_referee_custom_str'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtwalwm_referee_custom_str'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtwalwm_referee_custom_str'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
