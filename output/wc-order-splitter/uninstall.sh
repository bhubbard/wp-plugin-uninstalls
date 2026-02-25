#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'order_splitter_exclude_shipping_fee'
wp option delete 'order_splitter_disable_split_order_email'
wp option delete 'order_splitter_status_allowed'
wp option delete 'order_splitter_shop_manager_permission'
wp option delete 'order_splitter_order_label'
wp option delete 'wc_order_cancellation_return_premium_license_status'
wp option delete 'yoohw_settings_disable_menu'
wp option delete 'woocommerce_new_order_recipient'
wp option delete 'woocommerce_default_country'
wp option delete 'wc_order_splitter_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edit_shop_order_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edit_shop_order_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edit_shop_order_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edit_shop_order_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcos_order_splitter_settings_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcos_order_splitter_settings_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcos_order_splitter_settings_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcos_order_splitter_settings_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_order_splitter_activation_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_order_splitter_activation_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_order_splitter_activation_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_order_splitter_activation_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_order_splitter_never_show_again'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_order_splitter_never_show_again'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_order_splitter_never_show_again'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_order_splitter_never_show_again'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_advanced_order_actions_premium_ads_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_advanced_order_actions_premium_ads_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_advanced_order_actions_premium_ads_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_advanced_order_actions_premium_ads_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yoads_orders_splitter_to_pre_orders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yoads_orders_splitter_to_pre_orders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yoads_orders_splitter_to_pre_orders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yoads_orders_splitter_to_pre_orders'"
