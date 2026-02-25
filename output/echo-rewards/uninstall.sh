#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecre_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'ecre_current_coupon_process'
wp option delete 'ecre_coupon_update_in_progress'
wp option delete 'ecre_review_notice'
wp option delete 'ecre_affiliate_notice'
wp option delete 'ecre_upgrade_notice'
wp option delete 'ecre_deafult_review_notice_interval'
wp option delete 'ecre_deafult_affiliate_notice_interval'
wp option delete 'ecre_deafult_upgrade_notice_interval'
wp option delete 'ecre_migration_notice_dismissed'
wp option delete 'ecre_first_install_version'
wp option delete 'active_sitewide_plugins'
wp option delete 'ecre_db_version'
wp option delete 'ecre_tables_last_check'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'redirect_to_ecre_page'
wp option delete 'ecre_install_date'
wp option delete 'ecre_current_version'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'ecre_referral_discount'
wp option delete 'ecre_referral_discount_type'
wp option delete 'ecre_reward_discount'
wp option delete 'ecre_reward_discount_type'
wp option delete 'vertical_left'
wp option delete 'ecre_referral_program_status'
wp option delete 'ecre_referral_status_message'
wp option delete 'ecre_referral_discount_capping'
wp option delete 'ecre_referral_menu_name'
wp option delete 'ecre_monthly_referral_limit'
wp option delete 'ecre_referral_minimum_purchase_amount'
wp option delete 'ecre_referral_coupon_prefix'
wp option delete 'ecre_referral_status'
wp option delete 'ecre_referral_new_customer'
wp option delete 'ecre_referral_tab_on_product_page'
wp option delete 'ecre_referral_floating_widget'
wp option delete 'ecre_referral_social_sharing'
wp option delete 'ecre_hide_referral_menu_icon'
wp option delete 'ecre_reward_discount_capping'
wp option delete 'ecre_reward_minimum_purchase_amount'
wp option delete 'ecre_reward_coupon_validity'
wp option delete 'ecre_reward_coupon_usage_limit'
wp option delete 'ecre_referral_enable_email_notifications'
wp option delete 'ecre_referral_email_subject'
wp option delete 'ecre_referral_email_heading'
wp option delete 'ecre_referral_email_description'
wp option delete 'ecre_reward_enable_email_notifications'
wp option delete 'ecre_reward_email_subject'
wp option delete 'ecre_reward_email_heading'
wp option delete 'ecre_reward_email_description'
wp option delete 'ecre_referral_icon'

# Clear Cron Jobs
wp cron event delete 'ecre_process_migration_batch'
wp cron event delete 'ecre_reward_scheduled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'referral_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'referral_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'referral_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'referral_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reward_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reward_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reward_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reward_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_referral_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_referral_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_referral_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_referral_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_reward_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_reward_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_reward_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_reward_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_applied_reward_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_applied_reward_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_applied_reward_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_applied_reward_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_available_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_available_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_available_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_available_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_reward_point_expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_reward_point_expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_reward_point_expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_reward_point_expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_custom_referral'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_custom_referral'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_custom_referral'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_custom_referral'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ecre_referral_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ecre_referral_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ecre_referral_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ecre_referral_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ecre_reward_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ecre_reward_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ecre_reward_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ecre_reward_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_referral_coupon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_referral_coupon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_referral_coupon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_referral_coupon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_referrer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_referrer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_referrer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_referrer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_referral_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_referral_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_referral_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_referral_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcs_number_payments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcs_number_payments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcs_number_payments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcs_number_payments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_referral_coupon_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_referral_coupon_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_referral_coupon_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_referral_coupon_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_referral_coupon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_referral_coupon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_referral_coupon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_referral_coupon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_reward_coupon_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_reward_coupon_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_reward_coupon_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_reward_coupon_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_reward_point_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_reward_point_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_reward_point_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_reward_point_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reward_coupon_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reward_coupon_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reward_coupon_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reward_coupon_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reward_coupon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reward_coupon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reward_coupon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reward_coupon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_applied_referral_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_applied_referral_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_applied_referral_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_applied_referral_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_applied_referral_coupon_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_applied_referral_coupon_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_applied_referral_coupon_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_applied_referral_coupon_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_applied_referral_coupon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_applied_referral_coupon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_applied_referral_coupon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_applied_referral_coupon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_reward_schedule_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_reward_schedule_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_reward_schedule_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_reward_schedule_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'applied_coupon_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'applied_coupon_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'applied_coupon_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'applied_coupon_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_referral_order_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_referral_order_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_referral_order_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_referral_order_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_reward_coupon_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_reward_coupon_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_reward_coupon_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_reward_coupon_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_reward_coupon_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_reward_coupon_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_reward_coupon_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_reward_coupon_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reward_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reward_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reward_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reward_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecre_reward_point'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecre_reward_point'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecre_reward_point'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecre_reward_point'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'referral_usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'referral_usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'referral_usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'referral_usage_count'"
