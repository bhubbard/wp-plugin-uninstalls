#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_multilevel_referral_credit_type'
wp option delete 'woocommerce_multilevel_referral_store_credit'
wp option delete 'woocommerce-multilevel-referral-levelbase-credit'
wp option delete 'woocommerce-multilevel-referral-max-level'
wp option delete 'woocommerce-multilevel-referral-level-credit'
wp option delete 'woocommerce_multilevel_referral_level_c'
wp option delete 'joining_mail_template'
wp option delete 'joining_mail_subject'
wp option delete 'joining_mail_heading'
wp option delete 'referral_user_template'
wp option delete 'referral_user_subject'
wp option delete 'referral_user_heading'
wp option delete 'expire_notification_template'
wp option delete 'expire_notification_subject'
wp option delete 'expire_notification_heading'
wp option delete 'woocommerce_myaccount_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_heading'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_subject'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_template'"
wp option delete 'woocommerce_multilevel_referral_welcome_credit_for'
wp option delete 'woocommerce_multilevel_referral_earning_method'
wp option delete 'woocommerce_multilevel_referral_bouns_offere_type'
wp option delete 'woocommerce_multilevel_referral_order_level_credit'
wp option delete 'woocommerce_multilevel_referral_customer_based_bonus'
wp option delete 'woocommerce-multilevel-referral-level-c'
wp option delete 'woocommerce-multilevel-referral-level-c-new'
wp option delete 'woocommerce_multilevel_referral_cat_pref'
wp option delete 'woocommerce_multilevel_referral_welcome_credit'
wp option delete 'woocommerce_multilevel_referral_auto_register'
wp option delete 'woocommerce_multilevel_referral_terms_and_conditions'
wp option delete 'woocommerce_multilevel_referral_plan_type'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_multilevel_referral_default_banners'
wp option delete 'woocommerce_multilevel_referral_pre_banners'
wp option delete 'woocommerce_multilevel_referral_version'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activated'"
wp option delete 'woocommerce-multilevel-referral-earning-method'
wp option delete 'woocommerce_multilevel_referral_customer_order_based_bonus'

# Delete Transients
wp transient delete 'vpt_flush'
wp transient delete 'banner_delete_error'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce-multilevel-referral-level-credit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce-multilevel-referral-level-credit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce-multilevel-referral-level-credit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce-multilevel-referral-level-credit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_multilevel_referral_level_c'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_multilevel_referral_level_c'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_multilevel_referral_level_c'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_multilevel_referral_level_c'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_multilevel_referral_credits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_multilevel_referral_credits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_multilevel_referral_credits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_multilevel_referral_credits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_credits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_credits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_credits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_credits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce-multilevel-referral-user-level-enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce-multilevel-referral-user-level-enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce-multilevel-referral-user-level-enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce-multilevel-referral-user-level-enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce-multilevel-referral-level-c'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce-multilevel-referral-level-c'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce-multilevel-referral-level-c'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce-multilevel-referral-level-c'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_multilevel_referral_store_credit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_multilevel_referral_store_credit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_multilevel_referral_store_credit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_multilevel_referral_store_credit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_store_credit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_store_credit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_store_credit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_store_credit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_multilevel_referral_store_credit_added'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_multilevel_referral_store_credit_added'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_multilevel_referral_store_credit_added'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_multilevel_referral_store_credit_added'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_multilevel_referral_get_order_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_multilevel_referral_get_order_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_multilevel_referral_get_order_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_multilevel_referral_get_order_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_multilevel_referral_start_earning'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_multilevel_referral_start_earning'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_multilevel_referral_start_earning'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_multilevel_referral_start_earning'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'termsandconditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'termsandconditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'termsandconditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'termsandconditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_referrals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_referrals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_referrals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_referrals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
