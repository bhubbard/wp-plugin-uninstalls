#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ywsbs_enable_shop_manager'
wp option delete 'ywsbs_place_order_label'
wp option delete 'ywsbs_add_to_cart_label'
wp option delete 'ywsbs_sync_first_payment'
wp option delete 'ywsbs_total_subscription_length_text'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'ywsbs_enable_manual_renews'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'ywsbs_trash_pending_subscriptions'
wp option delete 'ywsbs_trash_cancelled_subscriptions'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'ywsbs_subscription_action_style'
wp option delete 'ywsbs_text_cancel_subscription_dropdown'
wp option delete 'ywsbs_text_cancel_subscription_modal'
wp option delete 'ywsbs_text_cancel_subscription_button'
wp option delete 'ywsbs_text_close_modal'
wp option delete 'ywsbs_delete_subscription_order_cancelled'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'ywsbs_disable_the_reduction_of_order_stock_in_renew'
wp option delete 'ywsbs_erasure_request'
wp option delete 'ywsbs_allow_customer_cancel_subscription'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_subscription_status_style'"
wp option delete 'ywsbs_delete_personal_info'
wp option delete 'ywsbs_enable_log'
wp option delete 'woocommerce_paypal_settings'
wp option delete 'ywsbs_suspend_for_failed_recurring_payment'
wp option delete 'woocommerce_ppcp-gateway_settings'
wp option delete 'ywsbs_pp_force_disabled_sources'
wp option delete 'yit_font_awesome_list'
wp option delete 'yit_dashicons_list'
wp option delete 'yit_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'yit_recently_activated'
wp option delete 'yith_system_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id'"

# Delete Transients
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'ywsbs_renew_orders'
wp cron event delete 'ywsbs_pay_renew_subscription_orders'
wp cron event delete 'ywsbs_trash_cancelled_subscriptions'
wp cron event delete 'ywsbs_trash_pending_subscriptions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ywsbs_upgrade_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ywsbs_upgrade_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ywsbs_upgrade_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ywsbs_upgrade_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ywsbs_trial_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ywsbs_trial_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ywsbs_trial_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ywsbs_trial_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ywsbs_subscription_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ywsbs_subscription_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ywsbs_subscription_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ywsbs_subscription_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
