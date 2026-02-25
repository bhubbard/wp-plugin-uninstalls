#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_order_splitter_premium_license_status'
wp option delete 'yoohw_settings_disable_menu'
wp option delete 'woocommerce_new_order_recipient'
wp option delete 'woocommerce_default_country'
wp option delete 'wc_pre_orders_version'
wp option delete 'yoess_pre_order_email_to_admin'
wp option delete 'yoess_pre_order_email_to_admin_timer'
wp option delete 'yoess_pre_order_customer_actions'
wp option delete 'yoess_pre_order_auto_split_order'
wp option delete 'automation_splitter_delay_timer'
wp option delete 'order_splitter_notifications_email_sending_mode'
wp option delete 'yoess_pre_order_button_text'

# Clear Cron Jobs
wp cron event delete 'wc_pre_orders_update_stock_status'
wp cron event delete 'wc_pre_orders_email_admin_preorder_availability'
wp cron event delete 'woocommerce_handle_order_split'
wp cron event delete 'wc_split_original_customer_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pre_order_available_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pre_order_available_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pre_order_available_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pre_order_available_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pre_order_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pre_order_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pre_order_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pre_order_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edit_shop_order_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edit_shop_order_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edit_shop_order_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edit_shop_order_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpo_pre_orders_settings_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpo_pre_orders_settings_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpo_pre_orders_settings_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpo_pre_orders_settings_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_pre_orders_activation_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_pre_orders_activation_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_pre_orders_activation_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_pre_orders_activation_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_pre_orders_never_show_again'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_pre_orders_never_show_again'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_pre_orders_never_show_again'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_pre_orders_never_show_again'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_pre_orders_premium_ads_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_pre_orders_premium_ads_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_pre_orders_premium_ads_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_pre_orders_premium_ads_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_extended_status_available_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_extended_status_available_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_extended_status_available_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_extended_status_available_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
