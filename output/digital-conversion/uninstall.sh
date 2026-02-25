#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'digital_conversion_version'
wp option delete 'digital_conversion_db_version'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'woocommerce_cart_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_terms_page_id'
wp option delete 'woocommerce_privacy_policy_page_id'
wp option delete 'digital_conversion_enabled'
wp option delete 'digital_conversion_api_key'
wp option delete 'digital_conversion_opt_in_enabled'
wp option delete 'digital_conversion_opt_in_title'
wp option delete 'digital_conversion_opt_in_message'
wp option delete 'digital_conversion_opt_in_position'
wp option delete 'digital_conversion_opt_in_bg_color'
wp option delete 'digital_conversion_opt_in_text_color'
wp option delete 'digital_conversion_opt_in_btn_bg_color'
wp option delete 'digital_conversion_opt_in_btn_text_color'
wp option delete 'digital_conversion_opt_in_confirm_text'
wp option delete 'digital_conversion_opt_in_cancel_text'
wp option delete 'digital_conversion_opt_in_suppression_time'
wp option delete 'digital_conversion_opt_in_image'
wp option delete 'digital_conversion_notification_icon'
wp option delete 'digital_conversion_notification_badge'
wp option delete 'digital_conversion_topics_mapping'
wp option delete 'digital_conversion_topics_enabled'
wp option delete 'digital_conversion_templates_mapping'
wp option delete 'digital_conversion_templates_enabled'
wp option delete 'digital_conversion_specific_pages_topics'
wp option delete 'digital_conversion_vapid_public_key'
wp option delete 'digital_conversion_woocommerce_topics'
wp option delete 'digital_conversion_api_status'
wp option delete 'digital_conversion_api_status_changed'
wp option delete 'digital_conversion_last_health_check'
wp option delete 'digital_conversion_sync_stats'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'digital_conversion_api_status'
wp transient delete 'digital_conversion_site_id'

# Clear Cron Jobs
wp cron event delete 'digital_conversion_cleanup'
wp cron event delete 'digital_conversion_sync_data'
wp cron event delete 'digital_conversion_sync_subscriptions'
wp cron event delete 'digital_conversion_cleanup_data'
wp cron event delete 'digital_conversion_send_notifications'
wp cron event delete 'digital_conversion_sync_pending'
wp cron event delete 'digital_conversion_heartbeat'
wp cron event delete 'digital_conversion_process_cart_abandonments'
wp cron event delete 'digital_conversion_cleanup_cart_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digital_conversion_custom_subscription_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digital_conversion_custom_subscription_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digital_conversion_custom_subscription_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digital_conversion_custom_subscription_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digital_conversion_custom_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digital_conversion_custom_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digital_conversion_custom_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digital_conversion_custom_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digital_conversion_custom_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digital_conversion_custom_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digital_conversion_custom_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digital_conversion_custom_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digital_conversion_custom_confirm_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digital_conversion_custom_confirm_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digital_conversion_custom_confirm_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digital_conversion_custom_confirm_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digital_conversion_custom_cancel_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digital_conversion_custom_cancel_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digital_conversion_custom_cancel_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digital_conversion_custom_cancel_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digital_conversion_custom_topic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digital_conversion_custom_topic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digital_conversion_custom_topic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digital_conversion_custom_topic'"
