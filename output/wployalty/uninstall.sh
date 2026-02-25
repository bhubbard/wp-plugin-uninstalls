#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wlpe_settings'
wp option delete 'wlr_expire_point_active'
wp option delete 'active_sitewide_plugins'
wp option delete 'wlr_active_addons'
wp option delete 'recently_activated'
wp option delete 'wlr_new_rewards_section_enabled'
wp option delete 'wlr_is_on_boarding_completed'
wp option delete 'wlr_settings'
wp option delete 'wlr_point_ledger_complete'
wp option delete 'wlr_update_ledger_offset'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'wlr_birthday_email_template'
wp option delete 'wlr_earn_point_email_template'
wp option delete 'wlr_earn_reward_email_template'
wp option delete 'wlr_expire_email_template'
wp option delete 'wlr_new_level_email_template'
wp option delete 'wlr_expire_point_email_template'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'wlr_version'

# Delete Transients
wp transient delete 'wlr_remote_addons_list'
wp transient delete 'wlr_remote_recommendation_list'

# Clear Cron Jobs
wp cron event delete 'wlr_point_expire_email'
wp cron event delete 'wlr_change_point_expire_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expiry_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'individual_use'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_limit_per_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'limit_usage_to_x_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_product_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exclude_sale_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'minimum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'maximum_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_wployalty_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_wployalty_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_wployalty_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_wployalty_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wlr_action_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wlr_action_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wlr_action_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wlr_action_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wlr_reward_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wlr_reward_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wlr_reward_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wlr_reward_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wlr_user_reward_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wlr_user_reward_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wlr_user_reward_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wlr_user_reward_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wlr_campaign_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wlr_campaign_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wlr_campaign_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wlr_campaign_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wlr_display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wlr_display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wlr_display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wlr_display_name'"
