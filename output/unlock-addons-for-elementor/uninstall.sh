#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'unlockafe_ai_text_generator_settings'
wp option delete '_unlockafe_addons_opstions'
wp option delete 'unlockafe_default_header'
wp option delete 'unlockafe_default_footer'
wp option delete 'unlockafe_google_sheets_settings'
wp option delete 'unlockafe_google_map_api_key'
wp option delete 'unlockafe_db_version'

# Clear Cron Jobs
wp cron event delete 'unlockafe_abandoned_cart_check'
wp cron event delete 'unlockafe_send_scheduled_gift_card'
wp cron event delete 'unlockafe_sync_advantage_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coupon_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coupon_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coupon_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coupon_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unlockafe_limit_usage_per_time_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unlockafe_limit_usage_per_time_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unlockafe_limit_usage_per_time_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unlockafe_limit_usage_per_time_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unlockafe_allowed_user_roles_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unlockafe_allowed_user_roles_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unlockafe_allowed_user_roles_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unlockafe_allowed_user_roles_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unlockafe_strict_one_time_use'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unlockafe_strict_one_time_use'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unlockafe_strict_one_time_use'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unlockafe_strict_one_time_use'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_used_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usage_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unlockafe_gift_card_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unlockafe_gift_card_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unlockafe_gift_card_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unlockafe_gift_card_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unlockafe_store_credit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unlockafe_store_credit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unlockafe_store_credit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unlockafe_store_credit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unlockafe_gift_card_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unlockafe_gift_card_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unlockafe_gift_card_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unlockafe_gift_card_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unlockafe_allow_custom_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unlockafe_allow_custom_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unlockafe_allow_custom_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unlockafe_allow_custom_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unlockafe_header_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unlockafe_header_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unlockafe_header_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unlockafe_header_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unlockafe_footer_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unlockafe_footer_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unlockafe_footer_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unlockafe_footer_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
